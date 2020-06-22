
--                                                                          --
------------------------------------------------------------------------------

with PolyORB_HI_Generated.Deployment;
with PolyORB_HI_Generated.Types;

package Move is

   use PolyORB_HI_Generated.Deployment;
   use PolyORB_HI_Generated.Types;


   procedure read_altitude
     (alt_in : mov_data;
      alt_out : out mov_data);

   procedure altitude_controll
      (alt_in : mov_data;
	toggle_manual_control: toggle_data;
	manual_Controls: Satellite_Controls_impl;
	eng1Out: out toggle_data;
	eng2Out: out toggle_data;
	eng3Out: out toggle_data;
	eng4Out: out toggle_data;
	eng5Out: out toggle_data;
	eng6Out: out toggle_data;
	rotation: out mov_data);

end Move;
