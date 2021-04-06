/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 3F353F9E
/// @DnDInput : 6
/// @DnDArgument : "value" "200"
/// @DnDArgument : "value_5" "false"
/// @DnDArgument : "var" "num_pebbles"
/// @DnDArgument : "var_1" "num_shiny_rocks"
/// @DnDArgument : "var_2" "mouse_level"
/// @DnDArgument : "var_3" "renown"
/// @DnDArgument : "var_4" "num_sticks"
/// @DnDArgument : "var_5" "is_paused"
global.num_pebbles = 200;
global.num_shiny_rocks = 0;
global.mouse_level = 0;
global.renown = 0;
global.num_sticks = 0;
global.is_paused = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7F221D53
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "has_had_shiny_rocks"
has_had_shiny_rocks = false;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2DEA4C07
/// @DnDArgument : "objectid" "obj_toolbar"
/// @DnDArgument : "layer" ""UI""
/// @DnDSaveInfo : "objectid" "obj_toolbar"
instance_create_layer(0, 0, "UI", obj_toolbar);