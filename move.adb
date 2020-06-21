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
	eng1Out := True;
	eng2Out := False;
	eng3Out := True;
	eng4Out := True;
	eng5Out := False;
	eng6Out := True;
	rotation := 23;
      
   end altitude_controll;


end Move;
