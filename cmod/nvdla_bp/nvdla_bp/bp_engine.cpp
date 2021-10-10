#include "bp_engine.h" 

/*
//--------------------------------------------------------------------------------
//�����ܵĽ���������չ��,ÿһ�����������������ڵ��ԡ�
//cube��Ӳ���߼�Ӳ�����ģ������˷�Χ�ļ��㶼Χ�ƴ˺��Ľ��е�������
//��ƹؼ��ֶ��尴��feature��weightǰ�������ġ�
//������̶������Ӧfeature����ֵ��Ϊsigma���ֵ��weightȨֵ��Ϊdelta w�ݶ�ֵ��
//--------------------------------------------------------------------------------

//****************************************
//   �˷�����ģ��Ӳ���߼��ĳ˷���Ԫ
//   ATOM_ELE_NUM����Ӳ���߼���������
//   ����
//****************************************
void mac_unit(MAC_UNIT*mac) {

	int i;
	for (i = 0; i < ATOM_ELE_NUM; i++) {
		mac->oDat[i] = mac->inDat_a[i] * mac->inDat_b[i];
	}

}

//****************************************
//   ģ��Ӳ���߼�����ִ�г˷���atom����˼��
//   KENERL_CUBE_NUM����Ӳ���߼���һ�δ����
//   ����˸�������
//****************************************
void Atom_op(ATOM_OP*atom_op, MAC_UNIT*mac) {

	int k, a;

	// mac ����
	for (k = 0; k < KENERL_CUBE_NUM; k++) {
		// mac ����
		for (a = 0; a < ATOM_ELE_NUM; a++) {
			mac->inDat_a[a] = atom_op->f_atom[a]; // fֵ
			mac->inDat_b[a] = atom_op->k_atom[k][a];
		}
		// mac ���㣬��KENERL_CUBE_NUM�Σ���Ч��Ӳ���߼���KENERL_CUBE_NUM��mac��Ԫ���м���˼�롣
		mac_unit(mac);

		// mac ����洢
		for (a = 0; a < ATOM_ELE_NUM; a++) {
			atom_op->o_atom[KENERL_CUBE_NUM][ATOM_ELE_NUM] = mac->oDat[ATOM_ELE_NUM];
		}
	}
}

//****************************************
//   ģ��Ӳ���߼�����ִ�г˷���stripe����˼��
//   ��һ��stripe�����У�Kֵ���䣬Fֵ��������
//   ֻ�г˷����㣬û���ۼӣ�ԭ�������ڼ���Ȩֵ
//   �ݶ�ʱ����Ҫ�ۼӣ���ˣ�Ϊ���ó˷���·��
//   �ۼӲ�����ȡ������Ϊ�������̡�
//****************************************
void Stripe_op(STRIPE_OP*str_op, ATOM_OP*atom_op) {

	int i, j, a, k;
	int stride_x, stride_y;
	stride_x = str_op->stride_x;
	stride_y = str_op->stride_y;

	//kֵ����һ��
	for (k = 0; k < KENERL_CUBE_NUM; k++) {
		for (a = 0; a < ATOM_ELE_NUM; a++) {
			atom_op->k_atom[k][a] = str_op->k_stripe_atom[k][a];
		}
	}

	//��ֵ�����ṹ�� ����fea ɨ�赱ǰstripe��Ӧ������feature
	for (j = 0; j < stride_y; j++) {
		for (i = 0; i < stride_x; i++) {
			//����atom������featureֵ
			for (a = 0; a < ATOM_ELE_NUM; a++) {
				atom_op->f_atom[a] = str_op->f_stripe_atom[j*stride_x + i][a];
			}

			//����
			Atom_op(atom_op);

			//����洢
			for (k = 0; k < KENERL_CUBE_NUM; k++) {
				for (a = 0; a < ATOM_ELE_NUM; a++) {
					str_op->o_stripe_atom[j*stride_x + i][k][a] = atom_op->o_atom[k][a]; //����û���ۼӵĳ˻����
				}
			}

		}
	}
}


//****************************************
//   ģ��Ӳ���߼�����ִ�г˷���block����˼��
//   ��һ����������ʱ�����һ��������CUBE���
//   ����
//   ��һ���Ľ����ֻ��2ά����������channelά��
//   �������ۼӺ�õ�3ά�����������
//   ����size��cube���㶼�ǻ���block������������
//****************************************
void Block_op(BP_CUBE*bp_cube, BLOCK_OP*blk_op, STRIPE_OP*str_op) {

	int kCubeWidth, kCubeHeight;
	int fCubeWidth, fCubeHeight;
	kCubeWidth = bp_cube->kCubeWidth;
	kCubeHeight = bp_cube->kCubeHeight;
	fCubeWidth = bp_cube->fCubeWidth;
	fCubeHeight = bp_cube->fCubeHeight;

	int stride_x, stride_y;
	//����stride
	stride_x = fCubeWidth - kCubeWidth + 1;
	stride_y = fCubeHeight - kCubeHeight + 1;
	// ���ݸ�str�ṹ
	str_op->stride_x = stride_x;  
	str_op->stride_y = stride_y;



	int i, j, k, a;
	int r,s;
	// stripe���ڻ���ѡȡ��ӦȨֵatom�Ĵ���
	for (r = 0; r < kCubeHeight; r++) {
		for (s = 0; s < kCubeWidth; s++) {
			//����stripe����������ѭ�����м��㡣
			for (j = 0; j < stride_y; j++) {
				for (i = 0; i < stride_x; i++) {
					for (a = 0; a < ATOM_ELE_NUM; a++) {
						str_op->f_stripe_atom[j*stride_x + i][a] = blk_op->f_block_atom[(j + r)*fCubeWidth + i + s][a];  // ���ڻ�����ȡ��Ӧstripe���ڵ�atom
					}
				}
			}

			for (k = 0; k < KENERL_CUBE_NUM; k++) {
				for (a = 0; a < ATOM_ELE_NUM; a++) {
					str_op->k_stripe_atom[k][a] = blk_op->k_block_atom[r*kCubeWidth + s][k][a];
				}
			}

			//����
			Stripe_op(str_op);

			//����洢
			for (k = 0; k < KENERL_CUBE_NUM; k++) {
				for (a = 0; a < ATOM_ELE_NUM; a++) {
					blk_op->o_block_atom[j*stride_x + i][k][a] = blk_op->o_block_atom[j*stride_x + i][k][a] + str_op->o_stripe_atom[j*stride_x + i][k][a]; //r/sά�ȣ�������͵õ�2ά������
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







