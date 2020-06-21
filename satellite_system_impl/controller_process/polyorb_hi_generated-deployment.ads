--------------------------------------------------------
--  This file was automatically generated by Ocarina  --
--  Do NOT hand-modify this file, as your             --
--  changes will be lost when you re-run Ocarina      --
--------------------------------------------------------
pragma Style_Checks
 ("NM32766");


package PolyORB_HI_Generated.Deployment is

  pragma Preelaborate;

  --  For each node in the distributed application add an enumerator

  type Node_Type is
   (controller_process_K);

  --  Representation clause to have consistent positions for enumerators

  for Node_Type use
   (controller_process_K =>
     1);

  --  Size of Node_Type fixed to 8 bits

  for Node_Type'Size use 8;

  Max_Node_Image_Size : constant Standard.Integer :=
   20;

  --  Maximal Node_Image size for this node

  --  Node Image

  subtype UT_Deployment_Controller_Process_Node_Type_Range is
   Node_Type range Node_Type'First .. Node_Type'Last;

  subtype UT_Deployment_Controller_Process_1_Max_Node_Image_Size is
   Integer range 1 .. Max_Node_Image_Size;

  subtype UT_Deployment_Controller_Process_Node_Image_Component is
   Standard.String
     (UT_Deployment_Controller_Process_1_Max_Node_Image_Size);

  type UT_Deployment_Controller_Process_Node_Image_Array is
   array (UT_Deployment_Controller_Process_Node_Type_Range)
     of UT_Deployment_Controller_Process_Node_Image_Component;

  Node_Image : constant UT_Deployment_Controller_Process_Node_Image_Array :=
   UT_Deployment_Controller_Process_Node_Image_Array'
     (controller_process_K =>
       "controller_process_K");

  My_Node : constant Node_Type :=
   controller_process_K;

  --  For each thread in the distributed application nodes, add an enumerator

  type Entity_Type is
   (controller_process_alt_reader_K,
    controller_process_alt_controller_K,
    controller_process_photo_send_K,
    controller_process_photo_trigger_K);

  --  Representation clause to have consistent positions for enumerators

  for Entity_Type use
   (controller_process_alt_reader_K =>
     1,
    controller_process_alt_controller_K =>
     2,
    controller_process_photo_send_K =>
     3,
    controller_process_photo_trigger_K =>
     4);

  --  Size of Entity_Type fixed to 8 bits

  for Entity_Type'Size use 8;

  --  Entity Table

  subtype UT_Deployment_Controller_Process_Entity_Type_Range is
   Entity_Type range Entity_Type'First .. Entity_Type'Last;

  type UT_Deployment_Controller_Process_Entity_Table_Array is
   array (UT_Deployment_Controller_Process_Entity_Type_Range)
     of Node_Type;

  Entity_Table : constant UT_Deployment_Controller_Process_Entity_Table_Array :=
   UT_Deployment_Controller_Process_Entity_Table_Array'
     (controller_process_alt_reader_K =>
       controller_process_K,
      controller_process_alt_controller_K =>
       controller_process_K,
      controller_process_photo_send_K =>
       controller_process_K,
      controller_process_photo_trigger_K =>
       controller_process_K);

  Max_Entity_Image_Size : constant Standard.Integer :=
   35;

  --  Maximal Entity_Image size for this node

  --  Entity Image

  subtype UT_Deployment_Controller_Process_1_Max_Entity_Image_Size is
   Integer range 1 .. Max_Entity_Image_Size;

  subtype UT_Deployment_Controller_Process_Entity_Image_Component is
   Standard.String
     (UT_Deployment_Controller_Process_1_Max_Entity_Image_Size);

  type UT_Deployment_Controller_Process_Entity_Image_Array is
   array (UT_Deployment_Controller_Process_Entity_Type_Range)
     of UT_Deployment_Controller_Process_Entity_Image_Component;

  Entity_Image : constant UT_Deployment_Controller_Process_Entity_Image_Array :=
   UT_Deployment_Controller_Process_Entity_Image_Array'
     (controller_process_alt_reader_K =>
       "controller_process_alt_reader_K    ",
      controller_process_alt_controller_K =>
       "controller_process_alt_controller_K",
      controller_process_photo_send_K =>
       "controller_process_photo_send_K    ",
      controller_process_photo_trigger_K =>
       "controller_process_photo_trigger_K ");

  --  For each thread port in the distributed application nodes, add an 
  --  enumerator

  type Port_Type is
   (controller_process_alt_reader_alt_in_K,
    controller_process_alt_reader_alt_out_K,
    controller_process_alt_controller_alt_in_K,
    controller_process_alt_controller_engine_1_control_K,
    controller_process_alt_controller_engine_2_control_K,
    controller_process_alt_controller_engine_3_control_K,
    controller_process_alt_controller_engine_4_control_K,
    controller_process_alt_controller_engine_5_control_K,
    controller_process_alt_controller_engine_6_control_K,
    controller_process_alt_controller_rotation_K,
    controller_process_alt_controller_toggle_manual_control_K,
    controller_process_alt_controller_manual_controls_K,
    controller_process_photo_send_photo_in_K,
    controller_process_photo_send_photo_out_K,
    controller_process_photo_trigger_photo_trigger_in_K,
    controller_process_photo_trigger_photo_trigger_out_K);

  --  Representation clause to have consistent positions for enumerators

  for Port_Type use
   (controller_process_alt_reader_alt_in_K =>
     1,
    controller_process_alt_reader_alt_out_K =>
     2,
    controller_process_alt_controller_alt_in_K =>
     3,
    controller_process_alt_controller_engine_1_control_K =>
     4,
    controller_process_alt_controller_engine_2_control_K =>
     5,
    controller_process_alt_controller_engine_3_control_K =>
     6,
    controller_process_alt_controller_engine_4_control_K =>
     7,
    controller_process_alt_controller_engine_5_control_K =>
     8,
    controller_process_alt_controller_engine_6_control_K =>
     9,
    controller_process_alt_controller_rotation_K =>
     10,
    controller_process_alt_controller_toggle_manual_control_K =>
     11,
    controller_process_alt_controller_manual_controls_K =>
     12,
    controller_process_photo_send_photo_in_K =>
     13,
    controller_process_photo_send_photo_out_K =>
     14,
    controller_process_photo_trigger_photo_trigger_in_K =>
     15,
    controller_process_photo_trigger_photo_trigger_out_K =>
     16);

  --  Size of Port_Type fixed to 16 bits

  for Port_Type'Size use 16;

  --  Port Table

  subtype UT_Deployment_Controller_Process_Port_Type_Range is
   Port_Type range Port_Type'First .. Port_Type'Last;

  type UT_Deployment_Controller_Process_Port_Table_Array is
   array (UT_Deployment_Controller_Process_Port_Type_Range)
     of Entity_Type;

  Port_Table : constant UT_Deployment_Controller_Process_Port_Table_Array :=
   UT_Deployment_Controller_Process_Port_Table_Array'
     (controller_process_alt_reader_alt_in_K =>
       controller_process_alt_reader_K,
      controller_process_alt_reader_alt_out_K =>
       controller_process_alt_reader_K,
      controller_process_alt_controller_alt_in_K =>
       controller_process_alt_controller_K,
      controller_process_alt_controller_engine_1_control_K =>
       controller_process_alt_controller_K,
      controller_process_alt_controller_engine_2_control_K =>
       controller_process_alt_controller_K,
      controller_process_alt_controller_engine_3_control_K =>
       controller_process_alt_controller_K,
      controller_process_alt_controller_engine_4_control_K =>
       controller_process_alt_controller_K,
      controller_process_alt_controller_engine_5_control_K =>
       controller_process_alt_controller_K,
      controller_process_alt_controller_engine_6_control_K =>
       controller_process_alt_controller_K,
      controller_process_alt_controller_rotation_K =>
       controller_process_alt_controller_K,
      controller_process_alt_controller_toggle_manual_control_K =>
       controller_process_alt_controller_K,
      controller_process_alt_controller_manual_controls_K =>
       controller_process_alt_controller_K,
      controller_process_photo_send_photo_in_K =>
       controller_process_photo_send_K,
      controller_process_photo_send_photo_out_K =>
       controller_process_photo_send_K,
      controller_process_photo_trigger_photo_trigger_in_K =>
       controller_process_photo_trigger_K,
      controller_process_photo_trigger_photo_trigger_out_K =>
       controller_process_photo_trigger_K);

  Max_Port_Image_Size : constant Standard.Integer :=
   57;

  --  Maximal Port_Image size for this node

  subtype Port_Sized_String is
   Standard.String
     (1 .. PolyORB_HI_Generated.Deployment.Max_Port_Image_Size);

  --  Port Image

  type UT_Deployment_Controller_Process_Port_Image_Array is
   array (UT_Deployment_Controller_Process_Port_Type_Range)
     of Port_Sized_String;

  Port_Image : constant UT_Deployment_Controller_Process_Port_Image_Array :=
   UT_Deployment_Controller_Process_Port_Image_Array'
     (controller_process_alt_reader_alt_in_K =>
       "controller_process_alt_reader_alt_in_K                   ",
      controller_process_alt_reader_alt_out_K =>
       "controller_process_alt_reader_alt_out_K                  ",
      controller_process_alt_controller_alt_in_K =>
       "controller_process_alt_controller_alt_in_K               ",
      controller_process_alt_controller_engine_1_control_K =>
       "controller_process_alt_controller_engine_1_control_K     ",
      controller_process_alt_controller_engine_2_control_K =>
       "controller_process_alt_controller_engine_2_control_K     ",
      controller_process_alt_controller_engine_3_control_K =>
       "controller_process_alt_controller_engine_3_control_K     ",
      controller_process_alt_controller_engine_4_control_K =>
       "controller_process_alt_controller_engine_4_control_K     ",
      controller_process_alt_controller_engine_5_control_K =>
       "controller_process_alt_controller_engine_5_control_K     ",
      controller_process_alt_controller_engine_6_control_K =>
       "controller_process_alt_controller_engine_6_control_K     ",
      controller_process_alt_controller_rotation_K =>
       "controller_process_alt_controller_rotation_K             ",
      controller_process_alt_controller_toggle_manual_control_K =>
       "controller_process_alt_controller_toggle_manual_control_K",
      controller_process_alt_controller_manual_controls_K =>
       "controller_process_alt_controller_manual_controls_K      ",
      controller_process_photo_send_photo_in_K =>
       "controller_process_photo_send_photo_in_K                 ",
      controller_process_photo_send_photo_out_K =>
       "controller_process_photo_send_photo_out_K                ",
      controller_process_photo_trigger_photo_trigger_in_K =>
       "controller_process_photo_trigger_photo_trigger_in_K      ",
      controller_process_photo_trigger_photo_trigger_out_K =>
       "controller_process_photo_trigger_photo_trigger_out_K     ");

  --  Maximal message payload size for this node (in bits)

  Max_Payload_Size : constant Standard.Integer :=
   272;

  --  Biggest type: satellite_controls_impl

end PolyORB_HI_Generated.Deployment;
