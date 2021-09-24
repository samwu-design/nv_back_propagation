#include <stdio.h>
#include <stdlib.h>
#include <math.h>


//-----------------------------------------------------
// ������-��ӦӲ���߼���ģ
// core����ֻ����һ����Сcube����channel=ATOM_ELE_NUM��
//-----------------------------------------------------

#define ATOM_ELE_NUM	8		// ģ��Ϊaxi�ڴ��߼�mem���ݴ������nvdla�ж���Ϊatom������ָ8��element��FP32���Ӧ4*8��byte=256bits

#define CUBE_ATOM_SPACE	1024	// 32*32 224*224 (max)  ģ��BUFF�Ŀռ��С

#define KENERL_CUBE_NUM 8       //��Ӧ�߼���ģһ�ο��Լ����kernel��


// �м�������ռ䣬���ֻ������ж��壬Ӳ���߼�ʵ�������ݶ���buf ram�У�ͨ����ַ��ӳ���д���ݡ�
#define STRIPE_SPACE 1024       // ������w��h��С�йأ����ٴ���(w-r+1)*(h-s+1)
#define BLOCK_SPACE 1024        // ������w��h��С�йأ����ٴ���w*h


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

	// cube in buff  �洢��ʽ��ͬNVDLAҪ��
	float BPbuf_inCube[CUBE_ATOM_SPACE][ATOM_ELE_NUM];
	float BPbuf_kCube[CUBE_ATOM_SPACE][ATOM_ELE_NUM];

	// cube out buff �洢��ʽ��ͬNVDLAҪ��
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