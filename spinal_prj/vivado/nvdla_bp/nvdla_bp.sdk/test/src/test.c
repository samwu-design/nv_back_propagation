/*
 * test.c
 *
 *  Created on: 2021??12??7??
 *      Author: wusha
 */

#include <xparameters.h>
#include <xplatform_info.h>
#include <xil_io.h>

u32 apbwrite(u32 address , u32 data){
	Xil_Out32(XPAR_APB_M_BASEADDR + address,data);
}


u32 apbread(u32 address){
	u32 data;
	data = Xil_In32(XPAR_APB_M_BASEADDR + address);
	return data;
}


void main(){

    u32 state;
    state = 0;


	apbwrite(0x00000004,0); // clear interrupter

	// 5x5x8  3x3x8x8 is delta wt
	apbwrite(0x00000008,1); //is delta wt

	apbwrite(0x00000010,5); //dt width
	apbwrite(0x00000014,5); //dt height
	apbwrite(0x00000018,3); //wt width
	apbwrite(0x0000001c,3); //wt height
	apbwrite(0x00000020,3); //o width
	apbwrite(0x00000024,3); //o height

	apbwrite(0x00000028,0x00000000); //dt base addr  read
	apbwrite(0x0000002c,0x20000000); //wt base addr  read

	apbwrite(0x00000030,0x50000000); //dt base addr  write
	apbwrite(0x00000034,0x60000000); //wt base addr  write

	apbwrite(0x00000000,1); //enable




	// 5x5x8  3x3x8x8 is sigma
	do{

		usleep(1);
		state = apbread(0x00000000);

	}while(state != 0x2);

	apbwrite(0x00000004,1); // clear interrupter

	apbwrite(0x00000008,0); //is sigma

	apbwrite(0x00000010,5); //dt width
	apbwrite(0x00000014,5); //dt height
	apbwrite(0x00000018,3); //wt width
	apbwrite(0x0000001c,3); //wt height
	apbwrite(0x00000020,3); //o width
	apbwrite(0x00000024,3); //o height

	apbwrite(0x00000028,0x00000000); //dt base addr  read
	apbwrite(0x0000002c,0x20000000); //wt base addr  read

	apbwrite(0x00000030,0x50000000); //dt base addr  write
	apbwrite(0x00000034,0x60000000); //wt base addr  write

	apbwrite(0x00000000,1); //enable



/*
	// 3x3x8  3x3x8x8 is delta wt
	apbwrite(0x00000004,0); //is sigma

	apbwrite(0x00000010,3); //dt width
	apbwrite(0x00000014,3); //dt height
	apbwrite(0x00000018,3); //wt width
	apbwrite(0x0000001c,3); //wt height
	apbwrite(0x00000020,1); //o width
	apbwrite(0x00000024,1); //o height

	apbwrite(0x00000028,0x00000000); //dt base addr  read
	apbwrite(0x0000002c,0x20000000); //wt base addr  read

	apbwrite(0x00000030,0x50000000); //dt base addr  write
	apbwrite(0x00000034,0x60000000); //wt base addr  write

	apbwrite(0x00000000,1); //enable
	*/

/*
	// 3x3x8  3x3x8x8 is delta wt
	apbwrite(0x00000004,1); //is delta wt

	apbwrite(0x00000010,3); //dt width
	apbwrite(0x00000014,3); //dt height
	apbwrite(0x00000018,3); //wt width
	apbwrite(0x0000001c,3); //wt height
	apbwrite(0x00000020,1); //o width
	apbwrite(0x00000024,1); //o height

	apbwrite(0x00000028,0x00000000); //dt base addr  read
	apbwrite(0x0000002c,0x20000000); //wt base addr  read

	apbwrite(0x00000030,0x50000000); //dt base addr  write
	apbwrite(0x00000034,0x60000000); //wt base addr  write

	apbwrite(0x00000000,1); //enable

	*/



/*
 //  1x1x8 1x1x8x8 delta wt
	apbwrite(0x00000004,1); //is delta wt

	apbwrite(0x00000010,1); //dt width
	apbwrite(0x00000014,1); //dt height
	apbwrite(0x00000018,1); //wt width
	apbwrite(0x0000001c,1); //wt height
	apbwrite(0x00000020,1); //o width
	apbwrite(0x00000024,1); //o height

	apbwrite(0x00000028,0x00000000); //dt base addr  read
	apbwrite(0x0000002c,0x20000000); //wt base addr  read

	apbwrite(0x00000030,0x50000000); //dt base addr  write
	apbwrite(0x00000034,0x60000000); //wt base addr  write

	apbwrite(0x00000000,1); //enable
*/


/*
  //  1x1x8 1x1x8x8  sigma
	apbwrite(0x00000004,0); //is sigma
	apbwrite(0x00000010,1); //dt width
	apbwrite(0x00000014,1); //dt height
	apbwrite(0x00000018,1); //wt width
	apbwrite(0x0000001c,1); //wt height
	apbwrite(0x00000020,1); //o width
	apbwrite(0x00000024,1); //o height

	apbwrite(0x00000028,0x00000000); //dt base addr  read
	apbwrite(0x0000002c,0x20000000); //wt base addr  read

	apbwrite(0x00000030,0x50000000); //delta wt base addr  write
	apbwrite(0x00000034,0x60000000); //sigma base addr  write

	apbwrite(0x00000000,1); //enable

*/




}
