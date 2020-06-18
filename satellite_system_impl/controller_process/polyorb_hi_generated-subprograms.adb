--------------------------------------------------------
--  This file was automatically generated by Ocarina  --
--  Do NOT hand-modify this file, as your             --
--  changes will be lost when you re-run Ocarina      --
--------------------------------------------------------
pragma Style_Checks
 ("NM32766");

with satellite;

package body PolyORB_HI_Generated.Subprograms is

  procedure satellite_sys_read_altitude_spg
   (alt_in : PolyORB_HI_Generated.Types.mov_data;
    alt_out : out PolyORB_HI_Generated.Types.mov_data)
   renames satellite.read_altitude;

  procedure satellite_sys_alt_controll_spg
   (alt_in : PolyORB_HI_Generated.Types.mov_data;
    toggle_manual_control : PolyORB_HI_Generated.Types.toggle_data;
    manual_controls : PolyORB_HI_Generated.Types.Satellite_Controls_impl;
    eng1Out : out PolyORB_HI_Generated.Types.toggle_data;
    eng2Out : out PolyORB_HI_Generated.Types.toggle_data;
    eng3Out : out PolyORB_HI_Generated.Types.toggle_data;
    eng4Out : out PolyORB_HI_Generated.Types.toggle_data;
    eng5Out : out PolyORB_HI_Generated.Types.toggle_data;
    eng6Out : out PolyORB_HI_Generated.Types.toggle_data;
    rotation : out PolyORB_HI_Generated.Types.mov_data)
   renames satellite.altitude_controll;

end PolyORB_HI_Generated.Subprograms;
