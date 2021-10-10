#include "bp_engine.h" 

/*
//--------------------------------------------------------------------------------
//尽可能的将数据流程展开,每一步都独立出来，便于调试。
//cube是硬件逻辑硬件核心，超出此范围的计算都围绕此核心进行迭代运算
//设计关键字定义按照feature，weight前向来做的。
//反向过程定义则对应feature特征值则为sigma误差值，weight权值则为delta w梯度值。
//--------------------------------------------------------------------------------

//****************************************
//   乘法矩阵，模拟硬件逻辑的乘法单元
//   ATOM_ELE_NUM代表硬件逻辑运算能力
//   参数
//****************************************
void mac_unit(MAC_UNIT*mac) {

	int i;
	for (i = 0; i < ATOM_ELE_NUM; i++) {
		mac->oDat[i] = mac->inDat_a[i] * mac->inDat_b[i];
	}

}

//****************************************
//   模拟硬件逻辑并行执行乘法的atom操作思想
//   KENERL_CUBE_NUM代表硬件逻辑核一次处理的
//   卷积核个数能力
//****************************************
void Atom_op(ATOM_OP*atom_op, MAC_UNIT*mac) {

	int k, a;

	// mac 更新
	for (k = 0; k < KENERL_CUBE_NUM; k++) {
		// mac 更新
		for (a = 0; a < ATOM_ELE_NUM; a++) {
			mac->inDat_a[a] = atom_op->f_atom[a]; // f值
			mac->inDat_b[a] = atom_op->k_atom[k][a];
		}
		// mac 计算，算KENERL_CUBE_NUM次，等效于硬件逻辑有KENERL_CUBE_NUM个mac单元并行计算思想。
		mac_unit(mac);

		// mac 结果存储
		for (a = 0; a < ATOM_ELE_NUM; a++) {
			atom_op->o_atom[KENERL_CUBE_NUM][ATOM_ELE_NUM] = mac->oDat[ATOM_ELE_NUM];
		}
	}
}

//****************************************
//   模拟硬件逻辑并行执行乘法的stripe操作思想
//   在一次stripe操作中，K值不变，F值滑动计算
//   只有乘法计算，没有累加，原因在于在计算权值
//   梯度时不需要累加，因此，为共用乘法电路，
//   累加操作提取出来作为后续流程。
//****************************************
void Stripe_op(STRIPE_OP*str_op, ATOM_OP*atom_op) {

	int i, j, a, k;
	int stride_x, stride_y;
	stride_x = str_op->stride_x;
	stride_y = str_op->stride_y;

	//k值更新一次
	for (k = 0; k < KENERL_CUBE_NUM; k++) {
		for (a = 0; a < ATOM_ELE_NUM; a++) {
			atom_op->k_atom[k][a] = str_op->k_stripe_atom[k][a];
		}
	}

	//赋值操作结构体 更新fea 扫描当前stripe对应的所有feature
	for (j = 0; j < stride_y; j++) {
		for (i = 0; i < stride_x; i++) {
			//更新atom操作的feature值
			for (a = 0; a < ATOM_ELE_NUM; a++) {
				atom_op->f_atom[a] = str_op->f_stripe_atom[j*stride_x + i][a];
			}

			//计算
			Atom_op(atom_op);

			//结果存储
			for (k = 0; k < KENERL_CUBE_NUM; k++) {
				for (a = 0; a < ATOM_ELE_NUM; a++) {
					str_op->o_stripe_atom[j*stride_x + i][k][a] = atom_op->o_atom[k][a]; //这是没有累加的乘积结果
				}
			}

		}
	}
}


//****************************************
//   模拟硬件逻辑并行执行乘法的block操作思想
//   这一步，基本上时完成了一个完整的CUBE卷积
//   计算
//   这一步的结果还只是2维卷积结果，在channel维度
//   继续求累加后得到3维卷积计算结果。
//   更大size的cube计算都是基于block操作迭代计算
//****************************************
void Block_op(BP_CUBE*bp_cube, BLOCK_OP*blk_op, STRIPE_OP*str_op) {

	int kCubeWidth, kCubeHeight;
	int fCubeWidth, fCubeHeight;
	kCubeWidth = bp_cube->kCubeWidth;
	kCubeHeight = bp_cube->kCubeHeight;
	fCubeWidth = bp_cube->fCubeWidth;
	fCubeHeight = bp_cube->fCubeHeight;

	int stride_x, stride_y;
	//计算stride
	stride_x = fCubeWidth - kCubeWidth + 1;
	stride_y = fCubeHeight - kCubeHeight + 1;
	// 传递给str结构
	str_op->stride_x = stride_x;  
	str_op->stride_y = stride_y;



	int i, j, k, a;
	int r,s;
	// stripe窗口滑动选取对应权值atom的窗口
	for (r = 0; r < kCubeHeight; r++) {
		for (s = 0; s < kCubeWidth; s++) {
			//更新stripe操作数，并循环进行计算。
			for (j = 0; j < stride_y; j++) {
				for (i = 0; i < stride_x; i++) {
					for (a = 0; a < ATOM_ELE_NUM; a++) {
						str_op->f_stripe_atom[j*stride_x + i][a] = blk_op->f_block_atom[(j + r)*fCubeWidth + i + s][a];  // 窗口滑动获取对应stripe窗口的atom
					}
				}
			}

			for (k = 0; k < KENERL_CUBE_NUM; k++) {
				for (a = 0; a < ATOM_ELE_NUM; a++) {
					str_op->k_stripe_atom[k][a] = blk_op->k_block_atom[r*kCubeWidth + s][k][a];
				}
			}

			//计算
			Stripe_op(str_op);

			//结果存储
			for (k = 0; k < KENERL_CUBE_NUM; k++) {
				for (a = 0; a < ATOM_ELE_NUM; a++) {
					blk_op->o_block_atom[j*stride_x + i][k][a] = blk_op->o_block_atom[j*stride_x + i][k][a] + str_op->o_stripe_atom[j*stride_x + i][k][a]; //r/s维度，这里求和得到2维卷积结果
				}
			}
		}
	}


}


//****************************************
//  
//****************************************
void Channel_op();

//****************************************
//
//****************************************
void Group_op();



*/







