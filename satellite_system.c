#include <stdio.h>
#include <time.h>
#include <po_hi_time.h>

void read_altitude_spg(int datain, int* dataout){
	dataout* = 100;
}

void send_photo_spg(int datain, int* dataout){
	dataout* = 2;
}

void altitude_controll_spg(int alt_in, bool toggle, struct controls, bool* engine1, bool* engine2, bool* engine3, bool* engine4, bool* engine5, int* rotation){
	if(xloc){
		engine1* = True;
		engine2* = False;
	}else{
		engine1* = False;
		engine2* = True;
	}
	if(yloc){
		engine3* = True;
		engine4* = False;
	}else{
		engine3* = False;
		engine4* = True;
	}
	if(zloc){
		engine5* = True;
		engine6* = False;
	}else{
		engine5* = False;
		engine6* = True;
	}
	rotation*=0;
}

struct controls{
	int xLocation;
	int yLocation;
	int zLocation;
	int xRotation;
	int yRotation;
	int zRotation;
}
