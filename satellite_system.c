#include <stdio.h>
#include <time.h>
#include <po_hi_time.h>

void read_altitude_spg(int* dataout, int datain){
	dataout* = 100;
}

void send_photo_spg(int* dataout, int datain){
	dataout* = 2;
}

void altitude_controll_spg(bool* eng1out, bool* eng2out, bool* eng3out, bool* eng4out, bool* eng5out, bool* eng6out, int* rot, 
				int xloc, int yloc, int zloc, int xrot, int yrot, int zrot){
	if(xloc){
		eng1out* = True;
		eng2out* = False;
	}else{
		eng1out* = False;
		eng2out* = True;
	}
	if(yloc){
		eng3out* = True;
		eng4out* = False;
	}else{
		eng3out* = False;
		eng4out* = True;
	}
	if(zloc){
		eng5out* = True;
		eng6out* = False;
	}else{
		eng5out* = False;
		eng6out* = True;
	}
	rot*=0;
}
