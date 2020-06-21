--------------------------------------------------------
--  This file was automatically generated by Ocarina  --
--  Do NOT hand-modify this file, as your             --
--  changes will be lost when you re-run Ocarina      --
--------------------------------------------------------
pragma Style_Checks
 ("NM32766");

with PolyORB_HI_Generated;
with PolyORB_HI.Marshallers_G;
pragma Elaborate_All (PolyORB_HI.Marshallers_G);

package body PolyORB_HI_Generated.Marshallers is

  --  Marshallers for interface type of thread read_altitude.impl

  --------------
  -- Marshall -- 
  --------------

  procedure Marshall
   (Data : PolyORB_HI_Generated.Activity.satellite_sys_read_altitude_impl_Interface;
    Message : in out PolyORB_HI.Messages.Message_Type)
  is
    use PolyORB_HI_Generated.Activity;
  begin
    if (Data.Port
      = PolyORB_HI_Generated.Activity.alt_out)
    then
      PolyORB_HI_Generated.Marshallers.Marshall
       (Data.alt_out_DATA,
        Message);
    end if;
  end Marshall;

  ----------------
  -- Unmarshall -- 
  ----------------

  procedure Unmarshall
   (Port : PolyORB_HI_Generated.Activity.satellite_sys_read_altitude_impl_Port_Type;
    Data : out PolyORB_HI_Generated.Activity.satellite_sys_read_altitude_impl_Interface;
    Message : in out PolyORB_HI.Messages.Message_Type)
  is
    alt_in_DATA : PolyORB_HI_Generated.Types.mov_data;
    use PolyORB_HI_Generated.Activity;
  begin
    if (Port
      = PolyORB_HI_Generated.Activity.alt_in)
    then
      PolyORB_HI_Generated.Marshallers.Unmarshall
       (alt_in_DATA,
        Message);
      Data :=
       PolyORB_HI_Generated.Activity.satellite_sys_read_altitude_impl_Interface'
         (Port => PolyORB_HI_Generated.Activity.alt_in,
          alt_in_DATA => alt_in_DATA);
    end if;
  end Unmarshall;

  --  Marshallers for DATA type mov_data

  package mov_data_Marshallers is
   new PolyORB_HI.Marshallers_G
     (PolyORB_HI_Generated.Types.mov_data);

  procedure Marshall
   (Data : PolyORB_HI_Generated.Types.mov_data;
    Message : in out PolyORB_HI.Messages.Message_Type)
   renames mov_data_Marshallers.Marshall;

  procedure Unmarshall
   (Data : out PolyORB_HI_Generated.Types.mov_data;
    Message : in out PolyORB_HI.Messages.Message_Type)
   renames mov_data_Marshallers.Unmarshall;

  --  Marshallers for interface type of thread altitude_controll.impl

  --------------
  -- Marshall -- 
  --------------

  procedure Marshall
   (Data : PolyORB_HI_Generated.Activity.satellite_sys_altitude_controll_impl_Interface;
    Message : in out PolyORB_HI.Messages.Message_Type)
  is
    use PolyORB_HI_Generated.Activity;
  begin
    if (Data.Port
      = PolyORB_HI_Generated.Activity.engine_1_control)
    then
      PolyORB_HI_Generated.Marshallers.Marshall
       (Data.engine_1_control_DATA,
        Message);
    elsif (Data.Port
      = PolyORB_HI_Generated.Activity.engine_2_control)
    then
      PolyORB_HI_Generated.Marshallers.Marshall
       (Data.engine_2_control_DATA,
        Message);
    elsif (Data.Port
      = PolyORB_HI_Generated.Activity.engine_3_control)
    then
      PolyORB_HI_Generated.Marshallers.Marshall
       (Data.engine_3_control_DATA,
        Message);
    elsif (Data.Port
      = PolyORB_HI_Generated.Activity.engine_4_control)
    then
      PolyORB_HI_Generated.Marshallers.Marshall
       (Data.engine_4_control_DATA,
        Message);
    elsif (Data.Port
      = PolyORB_HI_Generated.Activity.engine_5_control)
    then
      PolyORB_HI_Generated.Marshallers.Marshall
       (Data.engine_5_control_DATA,
        Message);
    elsif (Data.Port
      = PolyORB_HI_Generated.Activity.engine_6_control)
    then
      PolyORB_HI_Generated.Marshallers.Marshall
       (Data.engine_6_control_DATA,
        Message);
    elsif (Data.Port
      = PolyORB_HI_Generated.Activity.rotation)
    then
      PolyORB_HI_Generated.Marshallers.Marshall
       (Data.rotation_DATA,
        Message);
    end if;
  end Marshall;

  ----------------
  -- Unmarshall -- 
  ----------------

  procedure Unmarshall
   (Port : PolyORB_HI_Generated.Activity.satellite_sys_altitude_controll_impl_Port_Type;
    Data : out PolyORB_HI_Generated.Activity.satellite_sys_altitude_controll_impl_Interface;
    Message : in out PolyORB_HI.Messages.Message_Type)
  is
    alt_in_DATA : PolyORB_HI_Generated.Types.mov_data;
    toggle_manual_control_DATA : PolyORB_HI_Generated.Types.toggle_data;
    manual_controls_DATA : PolyORB_HI_Generated.Types.Satellite_Controls_impl;
    use PolyORB_HI_Generated.Activity;
  begin
    if (Port
      = PolyORB_HI_Generated.Activity.alt_in)
    then
      PolyORB_HI_Generated.Marshallers.Unmarshall
       (alt_in_DATA,
        Message);
      Data :=
       PolyORB_HI_Generated.Activity.satellite_sys_altitude_controll_impl_Interface'
         (Port => PolyORB_HI_Generated.Activity.alt_in,
          alt_in_DATA => alt_in_DATA);
    elsif (Port
      = PolyORB_HI_Generated.Activity.toggle_manual_control)
    then
      PolyORB_HI_Generated.Marshallers.Unmarshall
       (toggle_manual_control_DATA,
        Message);
      Data :=
       PolyORB_HI_Generated.Activity.satellite_sys_altitude_controll_impl_Interface'
         (Port => PolyORB_HI_Generated.Activity.toggle_manual_control,
          toggle_manual_control_DATA => toggle_manual_control_DATA);
    elsif (Port
      = PolyORB_HI_Generated.Activity.manual_controls)
    then
      PolyORB_HI_Generated.Marshallers.Unmarshall
       (manual_controls_DATA,
        Message);
      Data :=
       PolyORB_HI_Generated.Activity.satellite_sys_altitude_controll_impl_Interface'
         (Port => PolyORB_HI_Generated.Activity.manual_controls,
          manual_controls_DATA => manual_controls_DATA);
    end if;
  end Unmarshall;

  --  Marshallers for DATA type toggle_data

  package toggle_data_Marshallers is
   new PolyORB_HI.Marshallers_G
     (PolyORB_HI_Generated.Types.toggle_data);

  procedure Marshall
   (Data : PolyORB_HI_Generated.Types.toggle_data;
    Message : in out PolyORB_HI.Messages.Message_Type)
   renames toggle_data_Marshallers.Marshall;

  procedure Unmarshall
   (Data : out PolyORB_HI_Generated.Types.toggle_data;
    Message : in out PolyORB_HI.Messages.Message_Type)
   renames toggle_data_Marshallers.Unmarshall;

  --  Marshallers for DATA type satellite_controls.impl

  package Satellite_Controls_impl_Marshallers is
   new PolyORB_HI.Marshallers_G
     (PolyORB_HI_Generated.Types.Satellite_Controls_impl);

  procedure Marshall
   (Data : PolyORB_HI_Generated.Types.Satellite_Controls_impl;
    Message : in out PolyORB_HI.Messages.Message_Type)
   renames Satellite_Controls_impl_Marshallers.Marshall;

  procedure Unmarshall
   (Data : out PolyORB_HI_Generated.Types.Satellite_Controls_impl;
    Message : in out PolyORB_HI.Messages.Message_Type)
   renames Satellite_Controls_impl_Marshallers.Unmarshall;

  --  Marshallers for interface type of thread send_photo.impl

  --------------
  -- Marshall -- 
  --------------

  procedure Marshall
   (Data : PolyORB_HI_Generated.Activity.satellite_sys_send_photo_impl_Interface;
    Message : in out PolyORB_HI.Messages.Message_Type)
  is
    use PolyORB_HI_Generated.Activity;
  begin
    if (Data.Port
      = PolyORB_HI_Generated.Activity.photo_out)
    then
      PolyORB_HI_Generated.Marshallers.Marshall
       (Data.photo_out_DATA,
        Message);
    end if;
  end Marshall;

  ----------------
  -- Unmarshall -- 
  ----------------

  procedure Unmarshall
   (Port : PolyORB_HI_Generated.Activity.satellite_sys_send_photo_impl_Port_Type;
    Data : out PolyORB_HI_Generated.Activity.satellite_sys_send_photo_impl_Interface;
    Message : in out PolyORB_HI.Messages.Message_Type)
  is
    photo_in_DATA : PolyORB_HI_Generated.Types.photo_data;
    use PolyORB_HI_Generated.Activity;
  begin
    if (Port
      = PolyORB_HI_Generated.Activity.photo_in)
    then
      PolyORB_HI_Generated.Marshallers.Unmarshall
       (photo_in_DATA,
        Message);
      Data :=
       PolyORB_HI_Generated.Activity.satellite_sys_send_photo_impl_Interface'
         (Port => PolyORB_HI_Generated.Activity.photo_in,
          photo_in_DATA => photo_in_DATA);
    end if;
  end Unmarshall;

  --  Marshallers for DATA type photo_data

  package photo_data_Marshallers is
   new PolyORB_HI.Marshallers_G
     (PolyORB_HI_Generated.Types.photo_data);

  procedure Marshall
   (Data : PolyORB_HI_Generated.Types.photo_data;
    Message : in out PolyORB_HI.Messages.Message_Type)
   renames photo_data_Marshallers.Marshall;

  procedure Unmarshall
   (Data : out PolyORB_HI_Generated.Types.photo_data;
    Message : in out PolyORB_HI.Messages.Message_Type)
   renames photo_data_Marshallers.Unmarshall;

  --  Marshallers for interface type of thread get_photo.impl

  --------------
  -- Marshall -- 
  --------------

  procedure Marshall
   (Data : PolyORB_HI_Generated.Activity.satellite_sys_get_photo_impl_Interface;
    Message : in out PolyORB_HI.Messages.Message_Type)
  is
    pragma Unreferenced
     (Message);
    pragma Unreferenced
     (Data);
  begin
    null;
  end Marshall;

  ----------------
  -- Unmarshall -- 
  ----------------

  procedure Unmarshall
   (Port : PolyORB_HI_Generated.Activity.satellite_sys_get_photo_impl_Port_Type;
    Data : out PolyORB_HI_Generated.Activity.satellite_sys_get_photo_impl_Interface;
    Message : in out PolyORB_HI.Messages.Message_Type)
  is
    pragma Unreferenced
     (Message);
    use PolyORB_HI_Generated.Activity;
  begin
    if (Port
      = PolyORB_HI_Generated.Activity.photo_trigger_in)
    then
      Data :=
       PolyORB_HI_Generated.Activity.satellite_sys_get_photo_impl_Interface'
         (Port => PolyORB_HI_Generated.Activity.photo_trigger_in);
    end if;
  end Unmarshall;

end PolyORB_HI_Generated.Marshallers;
