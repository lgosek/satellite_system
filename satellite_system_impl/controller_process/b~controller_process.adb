pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b~controller_process.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b~controller_process.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is
   pragma Warnings (Off);

   E016 : Short_Integer; pragma Import (Ada, E016, "system__soft_links_E");
   E026 : Short_Integer; pragma Import (Ada, E026, "system__exception_table_E");
   E109 : Short_Integer; pragma Import (Ada, E109, "ada__io_exceptions_E");
   E167 : Short_Integer; pragma Import (Ada, E167, "ada__numerics_E");
   E094 : Short_Integer; pragma Import (Ada, E094, "ada__tags_E");
   E108 : Short_Integer; pragma Import (Ada, E108, "ada__streams_E");
   E057 : Short_Integer; pragma Import (Ada, E057, "interfaces__c_E");
   E028 : Short_Integer; pragma Import (Ada, E028, "system__exceptions_E");
   E111 : Short_Integer; pragma Import (Ada, E111, "system__finalization_root_E");
   E106 : Short_Integer; pragma Import (Ada, E106, "ada__finalization_E");
   E119 : Short_Integer; pragma Import (Ada, E119, "system__storage_pools_E");
   E113 : Short_Integer; pragma Import (Ada, E113, "system__finalization_masters_E");
   E076 : Short_Integer; pragma Import (Ada, E076, "system__task_info_E");
   E092 : Short_Integer; pragma Import (Ada, E092, "ada__synchronous_task_control_E");
   E175 : Short_Integer; pragma Import (Ada, E175, "ada__calendar_E");
   E130 : Short_Integer; pragma Import (Ada, E130, "system__assertions_E");
   E173 : Short_Integer; pragma Import (Ada, E173, "system__random_seed_E");
   E020 : Short_Integer; pragma Import (Ada, E020, "system__secondary_stack_E");
   E185 : Short_Integer; pragma Import (Ada, E185, "system__tasking__initialization_E");
   E048 : Short_Integer; pragma Import (Ada, E048, "ada__real_time_E");
   E141 : Short_Integer; pragma Import (Ada, E141, "system__tasking__protected_objects_E");
   E181 : Short_Integer; pragma Import (Ada, E181, "system__tasking__protected_objects__entries_E");
   E193 : Short_Integer; pragma Import (Ada, E193, "system__tasking__queuing_E");
   E203 : Short_Integer; pragma Import (Ada, E203, "system__tasking__stages_E");
   E153 : Short_Integer; pragma Import (Ada, E153, "polyorb_hi__marshallers_g_E");
   E135 : Short_Integer; pragma Import (Ada, E135, "polyorb_hi__output_low_level_E");
   E201 : Short_Integer; pragma Import (Ada, E201, "polyorb_hi__periodic_task_E");
   E149 : Short_Integer; pragma Import (Ada, E149, "polyorb_hi__port_kinds_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "polyorb_hi__suspenders_E");
   E133 : Short_Integer; pragma Import (Ada, E133, "polyorb_hi__output_E");
   E155 : Short_Integer; pragma Import (Ada, E155, "polyorb_hi__thread_interrogators_E");
   E159 : Short_Integer; pragma Import (Ada, E159, "polyorb_hi__unprotected_queue_E");
   E179 : Short_Integer; pragma Import (Ada, E179, "polyorb_hi_generated__transport_E");
   E166 : Short_Integer; pragma Import (Ada, E166, "move_E");
   E123 : Short_Integer; pragma Import (Ada, E123, "polyorb_hi_generated__activity_E");
   E161 : Short_Integer; pragma Import (Ada, E161, "polyorb_hi_generated__marshallers_E");
   E164 : Short_Integer; pragma Import (Ada, E164, "polyorb_hi_generated__subprograms_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      declare
         procedure F1;
         pragma Import (Ada, F1, "polyorb_hi__suspenders__finalize_body");
      begin
         E006 := E006 - 1;
         F1;
      end;
      E181 := E181 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         F2;
      end;
      E113 := E113 - 1;
      E092 := E092 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "ada__synchronous_task_control__finalize_spec");
      begin
         F3;
      end;
      declare
         procedure F4;
         pragma Import (Ada, F4, "system__finalization_masters__finalize_spec");
      begin
         F4;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := 97;
      Time_Slice_Value := 0;
      WC_Encoding := 'b';
      Locking_Policy := 'C';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      System.Restrictions.Run_Time_Restrictions :=
        (Set =>
          (False, False, False, False, True, False, False, False, 
           False, False, False, False, True, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, True, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, True, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, True, False, True, False, False, False, 
           False, False, False, False, False, False, False, False, 
           True, False, False, False, False, False, False, False, 
           False, False, False, False, False, False),
         Value => (0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
         Violated =>
          (False, False, False, True, True, False, False, True, 
           False, False, True, True, True, True, False, False, 
           True, False, False, True, True, False, True, True, 
           False, True, True, False, True, False, False, True, 
           False, True, False, False, True, False, False, False, 
           True, True, False, False, False, True, False, False, 
           False, True, False, False, False, False, False, False, 
           True, False, True, True, True, True, True, True, 
           False, False, True, False, True, True, False, True, 
           True, True, False, True, False, False, False, True, 
           False, False, False, False, True, False),
         Count => (0, 0, 0, 1, 0, 0, 0, 0, 3, 0),
         Unknown => (False, False, False, False, False, False, False, False, True, False));
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E026 := E026 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E109 := E109 + 1;
      Ada.Numerics'Elab_Spec;
      E167 := E167 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Streams'Elab_Spec;
      E108 := E108 + 1;
      Interfaces.C'Elab_Spec;
      System.Exceptions'Elab_Spec;
      E028 := E028 + 1;
      System.Finalization_Root'Elab_Spec;
      E111 := E111 + 1;
      Ada.Finalization'Elab_Spec;
      E106 := E106 + 1;
      System.Storage_Pools'Elab_Spec;
      E119 := E119 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Task_Info'Elab_Spec;
      E076 := E076 + 1;
      Ada.Synchronous_Task_Control'Elab_Spec;
      E092 := E092 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E175 := E175 + 1;
      System.Assertions'Elab_Spec;
      E130 := E130 + 1;
      System.Random_Seed'Elab_Body;
      E173 := E173 + 1;
      System.Finalization_Masters'Elab_Body;
      E113 := E113 + 1;
      E057 := E057 + 1;
      Ada.Tags'Elab_Body;
      E094 := E094 + 1;
      System.Soft_Links'Elab_Body;
      E016 := E016 + 1;
      System.Secondary_Stack'Elab_Body;
      E020 := E020 + 1;
      System.Tasking.Initialization'Elab_Body;
      E185 := E185 + 1;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E048 := E048 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E141 := E141 + 1;
      System.Tasking.Protected_Objects.Entries'Elab_Spec;
      E181 := E181 + 1;
      System.Tasking.Queuing'Elab_Body;
      E193 := E193 + 1;
      System.Tasking.Stages'Elab_Body;
      E203 := E203 + 1;
      E153 := E153 + 1;
      E135 := E135 + 1;
      E149 := E149 + 1;
      Polyorb_Hi.Suspenders'Elab_Body;
      E006 := E006 + 1;
      Polyorb_Hi.Output'Elab_Body;
      E133 := E133 + 1;
      E201 := E201 + 1;
      E159 := E159 + 1;
      E155 := E155 + 1;
      E166 := E166 + 1;
      Polyorb_Hi_Generated.Activity'Elab_Spec;
      Polyorb_Hi_Generated.Marshallers'Elab_Body;
      E161 := E161 + 1;
      E179 := E179 + 1;
      E164 := E164 + 1;
      Polyorb_Hi_Generated.Activity'Elab_Body;
      E123 := E123 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_controller_process");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   /home/kluch/Desktop/workspace/satellite_system/satellite_system_impl/controller_process/polyorb_hi.o
   --   /home/kluch/Desktop/workspace/satellite_system/satellite_system_impl/controller_process/polyorb_hi-streams.o
   --   /home/kluch/Desktop/workspace/satellite_system/satellite_system_impl/controller_process/polyorb_hi_generated.o
   --   /home/kluch/Desktop/workspace/satellite_system/satellite_system_impl/controller_process/polyorb_hi_generated-deployment.o
   --   /home/kluch/Desktop/workspace/satellite_system/satellite_system_impl/controller_process/polyorb_hi-utils.o
   --   /home/kluch/Desktop/workspace/satellite_system/satellite_system_impl/controller_process/polyorb_hi-messages.o
   --   /home/kluch/Desktop/workspace/satellite_system/satellite_system_impl/controller_process/polyorb_hi-errors.o
   --   /home/kluch/Desktop/workspace/satellite_system/satellite_system_impl/controller_process/polyorb_hi-marshallers_g.o
   --   /home/kluch/Desktop/workspace/satellite_system/satellite_system_impl/controller_process/polyorb_hi-output_low_level_native.o
   --   /home/kluch/Desktop/workspace/satellite_system/satellite_system_impl/controller_process/polyorb_hi-port_kinds.o
   --   /home/kluch/Desktop/workspace/satellite_system/satellite_system_impl/controller_process/polyorb_hi-port_type_marshallers.o
   --   /home/kluch/Desktop/workspace/satellite_system/satellite_system_impl/controller_process/polyorb_hi-suspenders.o
   --   /home/kluch/Desktop/workspace/satellite_system/satellite_system_impl/controller_process/polyorb_hi-output.o
   --   /home/kluch/Desktop/workspace/satellite_system/satellite_system_impl/controller_process/polyorb_hi-periodic_task.o
   --   /home/kluch/Desktop/workspace/satellite_system/satellite_system_impl/controller_process/polyorb_hi-time_marshallers.o
   --   /home/kluch/Desktop/workspace/satellite_system/satellite_system_impl/controller_process/polyorb_hi-unprotected_queue.o
   --   /home/kluch/Desktop/workspace/satellite_system/satellite_system_impl/controller_process/polyorb_hi-thread_interrogators.o
   --   /home/kluch/Desktop/workspace/satellite_system/satellite_system_impl/controller_process/polyorb_hi_generated-types.o
   --   /home/kluch/Desktop/workspace/satellite_system/satellite_system_impl/controller_process/move.o
   --   /home/kluch/Desktop/workspace/satellite_system/satellite_system_impl/controller_process/polyorb_hi_generated-marshallers.o
   --   /home/kluch/Desktop/workspace/satellite_system/satellite_system_impl/controller_process/polyorb_hi_generated-transport.o
   --   /home/kluch/Desktop/workspace/satellite_system/satellite_system_impl/controller_process/polyorb_hi_generated-subprograms.o
   --   /home/kluch/Desktop/workspace/satellite_system/satellite_system_impl/controller_process/polyorb_hi_generated-activity.o
   --   /home/kluch/Desktop/workspace/satellite_system/satellite_system_impl/controller_process/controller_process.o
   --   -L/home/kluch/Desktop/workspace/satellite_system/satellite_system_impl/controller_process/
   --   -L/home/kluch/Desktop/workspace/satellite_system/satellite_system_impl/controller_process/
   --   -L/usr/lib/gcc/x86_64-linux-gnu/5/adalib/
   --   -shared
   --   -lgnarl-5
   --   -lgnat-5
   --   -lpthread
   --   -lrt
--  END Object file/option list   

end ada_main;
