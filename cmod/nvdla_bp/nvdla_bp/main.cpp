#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "bp_engine.cpp"


void main() {

	BLOCK_OP*blk_op;
	BP_CUBE*bp_cube;
	//loss();

	Block_op(blk_op, bp_cube);




}

/*
void initial(BP_ENGINE*bp,int fea_width,int fea_height,int wt_width,int wt_height) {
// 初始化bp引擎数据
// 当前不考虑大尺寸，假定数据能全部存入buf中
// initial
bp->cube_par.fCubeWidth = fea_width;
bp->cube_par.fCubeHeight = fea_height;
bp->cube_par.fCubeChannel = ATOM_ELE_NUM;

bp->cube_par.kCubeWidth = wt_width;
bp->cube_par.kCubeHeight = wt_height;
bp->cube_par.kCubeChannel = ATOM_ELE_NUM;
bp->cube_par.kCubeNum = KENERL_CUBE_NUM;

// 文本文件里读取数据,初步设想参数通过文本方式获取，从caffemodel中提取
FILE *fp_in_f = fopen("../", "rb");
FILE *fp_in_k = fopen("../", "rb");

//输出文件
FILE *fp_o_f = fopen("../", "w+");

//检查文本是否存在
if (fp_in_f == NULL || fp_in_k == NULL || fp_o_f == NULL) {
printf("Err: files can not be opened!!! \n");
system("pause");
}

int i, j;
i = 0;
j = 0;

for (j = 0; j < fea_height; j++) {
for (i = 0; i < fea_width; i++) {
fread(&bp->cube_par.BPbuf_inCube[j][i], 1, 1, fp_in_f);
}
}

for (j = 0; j < wt_height; j++) {
for (i = 0; i < wt_width; i++) {
fread(&bp->cube_par.BPbuf_inCube[j][i], 1, 1, fp_in_k);
}
}
}
*/
