/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 3F353F9E
/// @DnDInput : 3
/// @DnDArgument : "value_2" "false"
/// @DnDArgument : "var" "mouse_level"
/// @DnDArgument : "var_1" "renown"
/// @DnDArgument : "var_2" "is_paused"
global.mouse_level = 0;
global.renown = 0;
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

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7E7E8C6E
/// @DnDArgument : "objectid" "obj_inventory_tracker"
/// @DnDArgument : "layer" ""UI""
/// @DnDSaveInfo : "objectid" "obj_inventory_tracker"
instance_create_layer(0, 0, "UI", obj_inventory_tracker);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5C6F6B08
/// @DnDArgument : "objectid" "obj_inventory"
/// @DnDArgument : "layer" ""UI""
/// @DnDSaveInfo : "objectid" "obj_inventory"
instance_create_layer(0, 0, "UI", obj_inventory);