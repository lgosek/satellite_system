--------------------------------------------------------
--  This file was automatically generated by Ocarina  --
--  Do NOT hand-modify this file, as your             --
--  changes will be lost when you re-run Ocarina      --
--------------------------------------------------------
pragma Style_Checks
 ("NM32766");

with PolyORB_HI_Generated.Types;
with PolyORB_HI.Errors;
with PolyORB_HI_Generated.Deployment;
with Ada.Real_Time;
with PolyORB_HI.Periodic_Task;
pragma Elaborate_All (PolyORB_HI.Periodic_Task);

package PolyORB_HI_Generated.Activity is

  --  BEGIN: Entities used by all instances of component read_altitude.impl

  type satellite_sys_read_altitude_impl_Port_Type is
   (alt_in,
    alt_out);

  type satellite_sys_read_altitude_impl_Interface 
   (Port : satellite_sys_read_altitude_impl_Port_Type := satellite_sys_read_altitude_impl_Port_Type'First)
  is
    record
      case Port is
        when alt_in =>
          alt_in_DATA : PolyORB_HI_Generated.Types.mov_data;
        when alt_out =>
          alt_out_DATA : PolyORB_HI_Generated.Types.mov_data;
        pragma Warnings (Off);
        when others =>
          null;
        pragma Warnings (On);
      end case;
    end record;

  function Send_Output
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : satellite_sys_read_altitude_impl_Port_Type)
   return PolyORB_HI.Errors.Error_Kind;

  procedure Put_Value
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Thread_Interface : satellite_sys_read_altitude_impl_Interface);

  procedure Receive_Input
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : satellite_sys_read_altitude_impl_Port_Type);

  function Get_Value
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : satellite_sys_read_altitude_impl_Port_Type)
   return satellite_sys_read_altitude_impl_Interface;

  function Get_Sender
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : satellite_sys_read_altitude_impl_Port_Type)
   return PolyORB_HI_Generated.Deployment.Entity_Type;

  function Get_Count
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : satellite_sys_read_altitude_impl_Port_Type)
   return Standard.Integer;

  function Get_Time_Stamp
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : satellite_sys_read_altitude_impl_Port_Type)
   return Ada.Real_Time.Time;

  procedure Next_Value
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : satellite_sys_read_altitude_impl_Port_Type);

  procedure Store_Received_Message
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Thread_Interface : satellite_sys_read_altitude_impl_Interface;
    From : PolyORB_HI_Generated.Deployment.Entity_Type;
    Time_Stamp : Ada.Real_Time.Time :=
      Ada.Real_Time.Clock);

  procedure Wait_For_Incoming_Events
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : out satellite_sys_read_altitude_impl_Port_Type);

  --  END: Entities used by all instances of component read_altitude.impl

  --  Periodic task : alt_reader

  function satellite_sys_alt_reader_Job return PolyORB_HI.Errors.Error_Kind;

  package satellite_sys_alt_reader_Task is
   new PolyORB_HI.Periodic_Task
     (Entity => PolyORB_HI_Generated.Deployment.controller_process_alt_reader_K,
      Task_Period => Ada.Real_Time.Milliseconds
       (200),
      Task_Deadline => Ada.Real_Time.Milliseconds
       (200),
      Task_Priority => 2,
      Task_Stack_Size => 100000,
      Job => satellite_sys_alt_reader_Job);

  --  BEGIN: Entities used by all instances of component 
  --  altitude_controll.impl

  type satellite_sys_altitude_controll_impl_Port_Type is
   (alt_in,
    engine_1_control,
    engine_2_control,
    engine_3_control,
    engine_4_control,
    engine_5_control,
    engine_6_control,
    rotation,
    toggle_manual_control,
    manual_controls);

  type satellite_sys_altitude_controll_impl_Interface 
   (Port : satellite_sys_altitude_controll_impl_Port_Type := satellite_sys_altitude_controll_impl_Port_Type'First)
  is
    record
      case Port is
        when alt_in =>
          alt_in_DATA : PolyORB_HI_Generated.Types.mov_data;
        when engine_1_control =>
          engine_1_control_DATA : PolyORB_HI_Generated.Types.toggle_data;
        when engine_2_control =>
          engine_2_control_DATA : PolyORB_HI_Generated.Types.toggle_data;
        when engine_3_control =>
          engine_3_control_DATA : PolyORB_HI_Generated.Types.toggle_data;
        when engine_4_control =>
          engine_4_control_DATA : PolyORB_HI_Generated.Types.toggle_data;
        when engine_5_control =>
          engine_5_control_DATA : PolyORB_HI_Generated.Types.toggle_data;
        when engine_6_control =>
          engine_6_control_DATA : PolyORB_HI_Generated.Types.toggle_data;
        when rotation =>
          rotation_DATA : PolyORB_HI_Generated.Types.mov_data;
        when toggle_manual_control =>
          toggle_manual_control_DATA : PolyORB_HI_Generated.Types.toggle_data;
        when manual_controls =>
          manual_controls_DATA : PolyORB_HI_Generated.Types.Satellite_Controls_impl;
        pragma Warnings (Off);
        when others =>
          null;
        pragma Warnings (On);
      end case;
    end record;

  function Send_Output
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : satellite_sys_altitude_controll_impl_Port_Type)
   return PolyORB_HI.Errors.Error_Kind;

  procedure Put_Value
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Thread_Interface : satellite_sys_altitude_controll_impl_Interface);

  procedure Receive_Input
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : satellite_sys_altitude_controll_impl_Port_Type);

  function Get_Value
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : satellite_sys_altitude_controll_impl_Port_Type)
   return satellite_sys_altitude_controll_impl_Interface;

  function Get_Sender
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : satellite_sys_altitude_controll_impl_Port_Type)
   return PolyORB_HI_Generated.Deployment.Entity_Type;

  function Get_Count
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : satellite_sys_altitude_controll_impl_Port_Type)
   return Standard.Integer;

  function Get_Time_Stamp
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : satellite_sys_altitude_controll_impl_Port_Type)
   return Ada.Real_Time.Time;

  procedure Next_Value
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : satellite_sys_altitude_controll_impl_Port_Type);

  procedure Store_Received_Message
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Thread_Interface : satellite_sys_altitude_controll_impl_Interface;
    From : PolyORB_HI_Generated.Deployment.Entity_Type;
    Time_Stamp : Ada.Real_Time.Time :=
      Ada.Real_Time.Clock);

  procedure Wait_For_Incoming_Events
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : out satellite_sys_altitude_controll_impl_Port_Type);

  --  END: Entities used by all instances of component altitude_controll.impl

  --  Periodic task : alt_controller

  function satellite_sys_alt_controller_Job return PolyORB_HI.Errors.Error_Kind;

  package satellite_sys_alt_controller_Task is
   new PolyORB_HI.Periodic_Task
     (Entity => PolyORB_HI_Generated.Deployment.controller_process_alt_controller_K,
      Task_Period => Ada.Real_Time.Milliseconds
       (200),
      Task_Deadline => Ada.Real_Time.Milliseconds
       (200),
      Task_Priority => 1,
      Task_Stack_Size => 100000,
      Job => satellite_sys_alt_controller_Job);

end PolyORB_HI_Generated.Activity;
