------------------------------------------------------------------------------
--                                                                          --
--                          PolyORB HI COMPONENTS                           --
--                                                                          --
--                                R A D A R                                 --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--                     Copyright (C) 2015 ESA & ISAE.                       --
--                                                                          --
-- PolyORB-HI is free software; you can redistribute it and/or modify under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion. PolyORB-HI is distributed in the hope that it will be useful, but  --
-- WITHOUT ANY WARRANTY; without even the implied warranty of               --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.                     --
--                                                                          --
-- As a special exception under Section 7 of GPL version 3, you are granted --
-- additional permissions described in the GCC Runtime Library Exception,   --
-- version 3.1, as published by the Free Software Foundation.               --
--                                                                          --
-- You should have received a copy of the GNU General Public License and    --
-- a copy of the GCC Runtime Library Exception along with this program;     --
-- see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see    --
-- <http://www.gnu.org/licenses/>.                                          --
--                                                                          --
--              PolyORB-HI/Ada is maintained by the TASTE project           --
--                      (taste-users@lists.tuxfamily.org)                   --
--                                                                          --
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
   begin
      	Put_Line ("Controlling altitude");
	toggle_manual_controls := True;
	manual_controls := Fake_Controls(Fake_Index);
	Fake_Index := Fake_Index + 1;
	eng1Out := False;
	eng2Out := False;
	eng3Out := False;
	eng4Out := False;
	eng5Out := False;
	eng6Out := False;
	rotation := 0;
	if toggle_manual_control = True then
		if manual_controls.xLocation > 0 then
			eng1Out := True;
			Put_Line ("Movement on the x axis in the positive direction");
		end if;
		if manual_controls.xLocation < 0 then
			eng2Out := True;
			Put_Line ("Movement on the x axis in the negative direction");
		end if;
		if manual_controls.yLocation > 0 then
			eng3Out := True;
			Put_Line ("Movement on the y axis in the positive direction");
		end if;
		if manual_controls.yLocation < 0 then
			eng4Out := True;
			Put_Line ("Movement on the y axis in the negative direction");
		end if;
		if manual_controls.zLocation > 0 then
			eng5Out := True;
			Put_Line ("Movement on the z axis in the positive direction");
		end if;
		if manual_controls.zLocation < 0 then
			eng6Out := True;
			Put_Line ("Movement on the z axis in the negative direction");
		end if;
		if manual_controls.xRotation > 0 or manual_controls.yRotation > 0 or manual_controls.zRotation > 0 then
			Put_Line("Calculating rotation...");
		end if;
	end if;
   end altitude_controll;


end Move;
