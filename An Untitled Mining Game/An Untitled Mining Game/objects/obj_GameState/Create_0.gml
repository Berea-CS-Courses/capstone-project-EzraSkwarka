/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 3F353F9E
/// @DnDInput : 4
/// @DnDArgument : "value_2" "false"
/// @DnDArgument : "value_3" "false"
/// @DnDArgument : "var" "mouse_level"
/// @DnDArgument : "var_1" "renown"
/// @DnDArgument : "var_2" "is_paused"
/// @DnDArgument : "var_3" "show_invtory_screen"
global.mouse_level = 0;
global.renown = 0;
global.is_paused = false;
global.show_invtory_screen = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7F221D53
/// @DnDInput : 2
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "expr_1" "false"
/// @DnDArgument : "var" "has_had_shiny_rocks"
/// @DnDArgument : "var_1" "show_inventory"
has_had_shiny_rocks = false;
show_inventory = false;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2DEA4C07
/// @DnDArgument : "objectid" "obj_toolbar"
/// @DnDArgument : "layer" ""UI""
/// @DnDSaveInfo : "objectid" "obj_toolbar"
instance_create_layer(0, 0, "UI", obj_toolbar);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5C6F6B08
/// @DnDArgument : "objectid" "obj_inventory"
/// @DnDArgument : "layer" ""UI""
/// @DnDSaveInfo : "objectid" "obj_inventory"
instance_create_layer(0, 0, "UI", obj_inventory);