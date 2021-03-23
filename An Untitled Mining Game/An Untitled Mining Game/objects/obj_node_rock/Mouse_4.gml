/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 22952C9B
/// @DnDInput : 4
/// @DnDArgument : "var" "node_health"
/// @DnDArgument : "script" "scr_node_left_click"
/// @DnDArgument : "arg" "node_health"
/// @DnDArgument : "arg_1" "0"
/// @DnDArgument : "arg_2" "obj_mat_pebble"
/// @DnDArgument : "arg_3" "30"
/// @DnDSaveInfo : "script" "scr_node_left_click"
node_health = script_execute(scr_node_left_click, node_health, 0, obj_mat_pebble, 30);