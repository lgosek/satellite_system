
------------------------------------------------------------------------------

with PolyORB_HI.Output;
with Ada.Numerics.Discrete_Random;


package body Move is

   use PolyORB_HI.Output;

	current_altitude: Integer := 9000;
	target_altitude: Integer := 9000;

	type Fake_Control_Index is mod 4;
   
	Fake_Controls: constant array (Fake_Control_Index'Range) of Satellite_Controls_impl :=
	((1,1,0,0,0,0),(1,0,-1,0,0,0),(0,0,-1,1,0,0),(-1,1,-1,1,-1,1));

	Fake_Index: Fake_Control_Index := 0;
	
	

   --------------
   -- Read_Altitude --
   --------------

   procedure read_altitude
     (alt_in : mov_data;
      alt_out : out mov_data)
   is
   		subtype rand_range is Integer range -50..50;
		package random_alt_change is new Ada.Numerics.Discrete_Random(rand_range);
		use random_alt_change;
		G: Generator;
		random_change: Integer;
   begin
		Reset(G);
		random_change := Random(G);
		
		if random_change in -5..5 then
			current_altitude := current_altitude + random_change;
		end if;
		
		Put_Line("Reading altitude " & Integer'Image(current_altitude));
      alt_out := mov_data(current_altitude);
   end read_altitude;

   -----------------
   -- Altitude Controll --
   -----------------

   procedure altitude_controll 
   (alt_in : mov_data;
	toggle_manual_control: toggle_data;
	manual_controls: Satellite_Controls_impl;
	eng1Out: out toggle_data;
	eng2Out: out toggle_data;
	eng3Out: out toggle_data;
	eng4Out: out toggle_data;
	eng5Out: out toggle_data;
	eng6Out: out toggle_data;
	rotation: out mov_data)
   is
      	pragma Unreferenced (manual_controls);
	Fake_manual_controls: Satellite_Controls_impl;
	Fake_toggle_manual_control: toggle_data := True;
   begin
      	Put_Line ("Controlling altitude");
	Fake_manual_controls := Fake_Controls(Fake_Index);
	Fake_Index := Fake_Index + 1;
	eng1Out := False;
	eng2Out := False;
	eng3Out := False;
	eng4Out := False;
	eng5Out := False;
	eng6Out := False;
	rotation := 0;
	if Fake_toggle_manual_control = True then
		if Fake_manual_controls.xLocation > 0 then
			eng1Out := True;
			Put_Line ("Movement on the x axis in the positive direction");
		end if;
		if Fake_manual_controls.xLocation < 0 then
			eng2Out := True;
			Put_Line ("Movement on the x axis in the negative direction");
		end if;
		if Fake_manual_controls.yLocation > 0 then
			eng3Out := True;
			Put_Line ("Movement on the y axis in the positive direction");
		end if;
		if Fake_manual_controls.yLocation < 0 then
			eng4Out := True;
			Put_Line ("Movement on the y axis in the negative direction");
		end if;
		if Fake_manual_controls.zLocation > 0 then
			eng5Out := True;
			Put_Line ("Movement on the z axis in the positive direction");
		end if;
		if Fake_manual_controls.zLocation < 0 then
			eng6Out := True;
			Put_Line ("Movement on the z axis in the negative direction");
		end if;
		if Fake_manual_controls.xRotation > 0 or Fake_manual_controls.yRotation > 0 or Fake_manual_controls.zRotation > 0 then
			Put_Line("Calculating rotation...");
		end if;
	end if;
   end altitude_controll;


end Move;
