--------------------------------------------------------
--  This file was automatically generated by Ocarina  --
--  Do NOT hand-modify this file, as your             --
--  changes will be lost when you re-run Ocarina      --
--------------------------------------------------------
pragma Style_Checks
 ("NM32766");

with PolyORB_HI_Generated.Activity;
with PolyORB_HI.Messages;
with PolyORB_HI_Generated.Types;

package PolyORB_HI_Generated.Marshallers is

  --  Marshallers for interface type of thread read_altitude.impl

  procedure Marshall
   (Data : PolyORB_HI_Generated.Activity.satellite_sys_read_altitude_impl_Interface;
    Message : in out PolyORB_HI.Messages.Message_Type);

  procedure Unmarshall
   (Port : PolyORB_HI_Generated.Activity.satellite_sys_read_altitude_impl_Port_Type;
    Data : out PolyORB_HI_Generated.Activity.satellite_sys_read_altitude_impl_Interface;
    Message : in out PolyORB_HI.Messages.Message_Type);

  --  Marshallers for DATA type mov_data

  procedure Marshall
   (Data : PolyORB_HI_Generated.Types.mov_data;
    Message : in out PolyORB_HI.Messages.Message_Type);

  procedure Unmarshall
   (Data : out PolyORB_HI_Generated.Types.mov_data;
    Message : in out PolyORB_HI.Messages.Message_Type);

  --  Marshallers for interface type of thread altitude_controll.impl

  procedure Marshall
   (Data : PolyORB_HI_Generated.Activity.satellite_sys_altitude_controll_impl_Interface;
    Message : in out PolyORB_HI.Messages.Message_Type);

  procedure Unmarshall
   (Port : PolyORB_HI_Generated.Activity.satellite_sys_altitude_controll_impl_Port_Type;
    Data : out PolyORB_HI_Generated.Activity.satellite_sys_altitude_controll_impl_Interface;
    Message : in out PolyORB_HI.Messages.Message_Type);

  --  Marshallers for DATA type toggle_data

  procedure Marshall
   (Data : PolyORB_HI_Generated.Types.toggle_data;
    Message : in out PolyORB_HI.Messages.Message_Type);

  procedure Unmarshall
   (Data : out PolyORB_HI_Generated.Types.toggle_data;
    Message : in out PolyORB_HI.Messages.Message_Type);

  --  Marshallers for DATA type satellite_controls.impl

  procedure Marshall
   (Data : PolyORB_HI_Generated.Types.Satellite_Controls_impl;
    Message : in out PolyORB_HI.Messages.Message_Type);

  procedure Unmarshall
   (Data : out PolyORB_HI_Generated.Types.Satellite_Controls_impl;
    Message : in out PolyORB_HI.Messages.Message_Type);

  --  Marshallers for interface type of thread send_photo.impl

  procedure Marshall
   (Data : PolyORB_HI_Generated.Activity.satellite_sys_send_photo_impl_Interface;
    Message : in out PolyORB_HI.Messages.Message_Type);

  procedure Unmarshall
   (Port : PolyORB_HI_Generated.Activity.satellite_sys_send_photo_impl_Port_Type;
    Data : out PolyORB_HI_Generated.Activity.satellite_sys_send_photo_impl_Interface;
    Message : in out PolyORB_HI.Messages.Message_Type);

  --  Marshallers for DATA type photo_data

  procedure Marshall
   (Data : PolyORB_HI_Generated.Types.photo_data;
    Message : in out PolyORB_HI.Messages.Message_Type);

  procedure Unmarshall
   (Data : out PolyORB_HI_Generated.Types.photo_data;
    Message : in out PolyORB_HI.Messages.Message_Type);

  --  Marshallers for interface type of thread get_photo.impl

  procedure Marshall
   (Data : PolyORB_HI_Generated.Activity.satellite_sys_get_photo_impl_Interface;
    Message : in out PolyORB_HI.Messages.Message_Type);

  procedure Unmarshall
   (Port : PolyORB_HI_Generated.Activity.satellite_sys_get_photo_impl_Port_Type;
    Data : out PolyORB_HI_Generated.Activity.satellite_sys_get_photo_impl_Interface;
    Message : in out PolyORB_HI.Messages.Message_Type);

end PolyORB_HI_Generated.Marshallers;
