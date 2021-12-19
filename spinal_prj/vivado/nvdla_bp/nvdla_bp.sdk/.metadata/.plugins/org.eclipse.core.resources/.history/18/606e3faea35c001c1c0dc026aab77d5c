/*
 * test.c
 *
 *  Created on: 2021Äê12ÔÂ7ÈÕ
 *      Author: wusha
 */

#include <xparameters.h>
#include <xplatform_info.h>
#include <xil_io.h>

u32 apbwrite(u32 address , u32 data){
	Xil_Out32(XPAR_APB_M_BASEADDR+address,data);
}


u32 apbread(u32 address){
	u32 data;
	data = Xil_In32(XPAR_APB_M_BASEADDR);
	return data;
}


void main(){


	apbwrite(0x00000004,0); //is delta wt or sigma
	apbwrite(0x00000010,1); //dt width
	apbwrite(0x00000014,1); //dt height
	apbwrite(0x00000018,1); //wt width
	apbwrite(0x0000001c,1); //wt height
	apbwrite(0x00000020,1); //o width
	apbwrite(0x00000024,1); //o height

	apbwrite(0x00000028,0x00000000); //dt base addr  read
	apbwrite(0x0000002c,0x50000000); //wt base addr  read

	apbwrite(0x00000030,0x10000000); //dt base addr  write
	apbwrite(0x00000034,0x60000000); //wt base addr  write


	apbwrite(0x00000000,1); //enable

}
