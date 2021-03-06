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
   (camera_control_process_K);

  --  Representation clause to have consistent positions for enumerators

  for Node_Type use
   (camera_control_process_K =>
     2);

  --  Size of Node_Type fixed to 8 bits

  for Node_Type'Size use 8;

  Max_Node_Image_Size : constant Standard.Integer :=
   24;

  --  Maximal Node_Image size for this node

  --  Node Image

  subtype UT_Deployment_Camera_Control_Process_Node_Type_Range is
   Node_Type range Node_Type'First .. Node_Type'Last;

  subtype UT_Deployment_Camera_Control_Process_1_Max_Node_Image_Size is
   Integer range 1 .. Max_Node_Image_Size;

  subtype UT_Deployment_Camera_Control_Process_Node_Image_Component is
   Standard.String
     (UT_Deployment_Camera_Control_Process_1_Max_Node_Image_Size);

  type UT_Deployment_Camera_Control_Process_Node_Image_Array is
   array (UT_Deployment_Camera_Control_Process_Node_Type_Range)
     of UT_Deployment_Camera_Control_Process_Node_Image_Component;

  Node_Image : constant UT_Deployment_Camera_Control_Process_Node_Image_Array :=
   UT_Deployment_Camera_Control_Process_Node_Image_Array'
     (camera_control_process_K =>
       "camera_control_process_K");

  My_Node : constant Node_Type :=
   camera_control_process_K;

  --  For each thread in the distributed application nodes, add an enumerator

  type Entity_Type is
   (camera_control_process_photo_send_K,
    camera_control_process_photo_trigger_K);

  --  Representation clause to have consistent positions for enumerators

  for Entity_Type use
   (camera_control_process_photo_send_K =>
     3,
    camera_control_process_photo_trigger_K =>
     4);

  --  Size of Entity_Type fixed to 8 bits

  for Entity_Type'Size use 8;

  --  Entity Table

  subtype UT_Deployment_Camera_Control_Process_Entity_Type_Range is
   Entity_Type range Entity_Type'First .. Entity_Type'Last;

  type UT_Deployment_Camera_Control_Process_Entity_Table_Array is
   array (UT_Deployment_Camera_Control_Process_Entity_Type_Range)
     of Node_Type;

  Entity_Table : constant UT_Deployment_Camera_Control_Process_Entity_Table_Array :=
   UT_Deployment_Camera_Control_Process_Entity_Table_Array'
     (camera_control_process_photo_send_K =>
       camera_control_process_K,
      camera_control_process_photo_trigger_K =>
       camera_control_process_K);

  Max_Entity_Image_Size : constant Standard.Integer :=
   38;

  --  Maximal Entity_Image size for this node

  --  Entity Image

  subtype UT_Deployment_Camera_Control_Process_1_Max_Entity_Image_Size is
   Integer range 1 .. Max_Entity_Image_Size;

  subtype UT_Deployment_Camera_Control_Process_Entity_Image_Component is
   Standard.String
     (UT_Deployment_Camera_Control_Process_1_Max_Entity_Image_Size);

  type UT_Deployment_Camera_Control_Process_Entity_Image_Array is
   array (UT_Deployment_Camera_Control_Process_Entity_Type_Range)
     of UT_Deployment_Camera_Control_Process_Entity_Image_Component;

  Entity_Image : constant UT_Deployment_Camera_Control_Process_Entity_Image_Array :=
   UT_Deployment_Camera_Control_Process_Entity_Image_Array'
     (camera_control_process_photo_send_K =>
       "camera_control_process_photo_send_K   ",
      camera_control_process_photo_trigger_K =>
       "camera_control_process_photo_trigger_K");

  --  For each thread port in the distributed application nodes, add an 
  --  enumerator

  type Port_Type is
   (camera_control_process_photo_send_photo_in_K,
    camera_control_process_photo_send_photo_out_K,
    camera_control_process_photo_trigger_photo_trigger_in_K,
    camera_control_process_photo_trigger_photo_trigger_out_K);

  --  Representation clause to have consistent positions for enumerators

  for Port_Type use
   (camera_control_process_photo_send_photo_in_K =>
     13,
    camera_control_process_photo_send_photo_out_K =>
     14,
    camera_control_process_photo_trigger_photo_trigger_in_K =>
     15,
    camera_control_process_photo_trigger_photo_trigger_out_K =>
     16);

  --  Size of Port_Type fixed to 16 bits

  for Port_Type'Size use 16;

  --  Port Table

  subtype UT_Deployment_Camera_Control_Process_Port_Type_Range is
   Port_Type range Port_Type'First .. Port_Type'Last;

  type UT_Deployment_Camera_Control_Process_Port_Table_Array is
   array (UT_Deployment_Camera_Control_Process_Port_Type_Range)
     of Entity_Type;

  Port_Table : constant UT_Deployment_Camera_Control_Process_Port_Table_Array :=
   UT_Deployment_Camera_Control_Process_Port_Table_Array'
     (camera_control_process_photo_send_photo_in_K =>
       camera_control_process_photo_send_K,
      camera_control_process_photo_send_photo_out_K =>
       camera_control_process_photo_send_K,
      camera_control_process_photo_trigger_photo_trigger_in_K =>
       camera_control_process_photo_trigger_K,
      camera_control_process_photo_trigger_photo_trigger_out_K =>
       camera_control_process_photo_trigger_K);

  Max_Port_Image_Size : constant Standard.Integer :=
   57;

  --  Maximal Port_Image size for this node

  subtype Port_Sized_String is
   Standard.String
     (1 .. PolyORB_HI_Generated.Deployment.Max_Port_Image_Size);

  --  Port Image

  type UT_Deployment_Camera_Control_Process_Port_Image_Array is
   array (UT_Deployment_Camera_Control_Process_Port_Type_Range)
     of Port_Sized_String;

  Port_Image : constant UT_Deployment_Camera_Control_Process_Port_Image_Array :=
   UT_Deployment_Camera_Control_Process_Port_Image_Array'
     (camera_control_process_photo_send_photo_in_K =>
       "camera_control_process_photo_send_photo_in_K             ",
      camera_control_process_photo_send_photo_out_K =>
       "camera_control_process_photo_send_photo_out_K            ",
      camera_control_process_photo_trigger_photo_trigger_in_K =>
       "camera_control_process_photo_trigger_photo_trigger_in_K  ",
      camera_control_process_photo_trigger_photo_trigger_out_K =>
       "camera_control_process_photo_trigger_photo_trigger_out_K ");

  --  Maximal message payload size for this node (in bits)

  Max_Payload_Size : constant Standard.Integer :=
   112;

  --  Biggest type: photo_data

end PolyORB_HI_Generated.Deployment;
