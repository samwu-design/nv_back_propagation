#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "bp_engine.cpp"





void main() {

	//����ָ��һ�ֳ���
	// example caculate delat w
	int fCubeWidth = 3;
	int fCubeHeight = 3;
	int fCubeChannel = 8;

	int kCubeWidth = 3;
	int kCubeHeight = 3;
	int kCubeChannel = 8;
	int kCubeNum = 8;

	int oCubeWidth = 1;
	int oCubeHeight = 1;
	int oCubeChannel = 8;


	float f_block_atom[CUBE_ATOM_SPACE][ATOM_ELE_NUM];
	float k_block_atom[CUBE_ATOM_SPACE][KENERL_CUBE_NUM][ATOM_ELE_NUM];
	float block_mult[CUBE_ATOM_SPACE][KENERL_CUBE_NUM][ATOM_ELE_NUM];
	float block_acc[CUBE_ATOM_SPACE][KENERL_CUBE_NUM];


	FILE *fp_erro = fopen("../../erro.txt", "r");
	FILE *fp_fea = fopen("../../fea.txt", "r");

	FILE *fp_fea = fopen("../../out.txt", "r");

	if (fp_erro == NULL || fp_fea == NULL) {
		printf("Erro: Test files can not be opened!!! \n");
		system("pause");
	}


	// ��ʼ��buff�ռ�
	int i, j, k;

	for (j = 0; j < BLOCK_SPACE; j++) {
		for (i = 0; i < ATOM_ELE_NUM; i++) {
			fread(&f_block_atom[BLOCK_SPACE][ATOM_ELE_NUM], 4, 1, fp_fea); // BP��Ӧǰһ�������ֵ
		}
	}

	for (j = 0; j < BLOCK_SPACE; j++) {
		for (k = 0; k < KENERL_CUBE_NUM; k++) {
			for (i = 0; i < ATOM_ELE_NUM; i++) {
				fread(&k_block_atom[BLOCK_SPACE][KENERL_CUBE_NUM][ATOM_ELE_NUM], 4, 1, fp_erro); // ��Ӧ��ǰ������ֵ
			}
		}
	}

	fclose(fp_erro);
	fclose(fp_fea);

	// ���ľ������ 
	int blk_stride_x, blk_stride_y; // �������ڲ���
	blk_stride_x = fCubeWidth - kCubeWidth + 1;
	blk_stride_y = fCubeHeight - kCubeHeight + 1;

	int a;
	int r, s; // k�������
	int atom_x, atom_y; // atom�����ڴ����е�����
	int idx, idy; //����������


	//�����������λ��
	for (k = 0; k < KENERL_CUBE_NUM; k++) {
		for (r = 0; r < kCubeHeight; r++) { // ����k atom����
			for (s = 0; s < kCubeWidth; s++) {
				for (atom_y = r; atom_y < r + blk_stride_y; atom_y++) {// ����fea atom����
					for (atom_x = s; atom_x < s + blk_stride_x; atom_x++) { //
						//��Ч��2ά��������ﲻ����atom�ۼ�ԭ��ʱ���ǵ���Ȩֵw�ݶ�deltaʱ����Ҫ���
						for (a = 0; a < ATOM_ELE_NUM; a++) { // atom ��� ģ��Ӳ��MAC��Ԫ
							//�������
							idx = atom_x - s;
							idy = atom_y - r;
							block_mult[idy*blk_stride_x + idx][k][a] = block_mult[idy*blk_stride_x + idx][k][a] + f_block_atom[atom_y*blk_stride_x + atom_x][a] * k_block_atom[r*kCubeWidth + s][k][a];
						}
					}
				}
			}
		}
	}


	// ��ά������ ����һ����������ۼ�
	for (idy = 0; idy < blk_stride_y; idy++) {
		for (idx = 0; idx < blk_stride_x; idx++) {
			for (k = 0; k < KENERL_CUBE_NUM; k++) {
				for (a = 0; a < ATOM_ELE_NUM; a++) {
					block_acc[idy*blk_stride_x + idx][k] = block_mult[idy*blk_stride_x + idx][k][a]; // ����ۼ�
				}
			}
		}
	}


}

