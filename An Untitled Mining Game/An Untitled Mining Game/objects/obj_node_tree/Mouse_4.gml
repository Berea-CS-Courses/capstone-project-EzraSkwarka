/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 22952C9B
/// @DnDInput : 4
/// @DnDArgument : "var" "node_health"
/// @DnDArgument : "script" "scr_node_left_click"
/// @DnDArgument : "arg" "node_health"
/// @DnDArgument : "arg_1" "2"
/// @DnDArgument : "arg_2" "obj_mat_pebble"
/// @DnDArgument : "arg_3" "15"
/// @DnDSaveInfo : "script" "scr_node_left_click"
node_health = script_execute(scr_node_left_click, node_health, 2, obj_mat_pebble, 15);