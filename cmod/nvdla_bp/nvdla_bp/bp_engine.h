#include <stdio.h>
#include <stdlib.h>
#include <math.h>


//-----------------------------------------------------
// 超参数-对应硬件逻辑规模
// core部分只包含一个最小cube，即channel=ATOM_ELE_NUM，
//-----------------------------------------------------

#define ATOM_ELE_NUM	8		// 模拟为axi内存逻辑mem数据处理带宽，nvdla中定义为atom，这里指8个element，FP32则对应4*8个byte=256bits

#define CUBE_ATOM_SPACE	1024	// 32*32 224*224 (max)  模拟BUFF的空间大小

#define KENERL_CUBE_NUM 8       //对应逻辑规模一次可以计算的kernel数


// 中间结果缓存空间，这个只在软件中定义，硬件逻辑实际上数据都在buf ram中，通过地址来映射读写数据。
#define STRIPE_SPACE 1024       // 与输入w与h大小有关，至少大于(w-r+1)*(h-s+1)
#define BLOCK_SPACE 1024        // 与输入w与h大小有关，至少大于w*h


typedef struct
{
	int fCubeWidth;
	int fCubeHeight;
	int fCubeChannel;

	int kCubeWidth;
	int kCubeHeight;
	int kCubeChannel;
	int kCubeNum;


	int oCubeWidth;
	int oCubeHeight;
	int oCubeChannel;

}CUBE_PAR;


typedef struct
{
	CUBE_PAR cube_par;

	// cube in buff  存储格式等同NVDLA要求
	float BPbuf_inCube[CUBE_ATOM_SPACE][ATOM_ELE_NUM];
	float BPbuf_kCube[CUBE_ATOM_SPACE][ATOM_ELE_NUM];

	// cube out buff 存储格式等同NVDLA要求
	float BPbuf_oCube[CUBE_ATOM_SPACE][ATOM_ELE_NUM];

}BP_CUBE;


typedef struct
{
	float inDat_a[ATOM_ELE_NUM];
	float inDat_b[ATOM_ELE_NUM];
	float oDat[ATOM_ELE_NUM];
}MAC_UNIT;

typedef struct
{
	float inDat_a[ATOM_ELE_NUM];
	float oDat;
}ACC_UNIT;

typedef struct
{
	float f_atom[ATOM_ELE_NUM];
	float k_atom[KENERL_CUBE_NUM][ATOM_ELE_NUM];
	float o_atom[KENERL_CUBE_NUM][ATOM_ELE_NUM];
}ATOM_OP;


typedef struct
{
	int   stride_x;
	int   stride_y;
	float f_stripe_atom[STRIPE_SPACE][ATOM_ELE_NUM];
	float k_stripe_atom[KENERL_CUBE_NUM][ATOM_ELE_NUM];
	float o_stripe_atom[STRIPE_SPACE][KENERL_CUBE_NUM][ATOM_ELE_NUM];
}STRIPE_OP;



typedef struct
{
	float f_block_atom[BLOCK_SPACE][ATOM_ELE_NUM];
	float k_block_atom[BLOCK_SPACE][KENERL_CUBE_NUM][ATOM_ELE_NUM];
	float o_block_atom[BLOCK_SPACE][KENERL_CUBE_NUM][ATOM_ELE_NUM];
}BLOCK_OP;










void mac_unit(MAC_UNIT*mac);
void Atom_op(ATOM_OP*atom_op);
void Stripe_op(STRIPE_OP*str_op);
void Block_op(BLOCK_OP*blk_op, BP_CUBE*bp_cube);