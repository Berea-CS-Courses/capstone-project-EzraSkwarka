/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 72E93883
/// @DnDArgument : "expr" ".2"
/// @DnDArgument : "var" "player_acceleration"
player_acceleration = .2;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 7CD9B5B8
/// @DnDInput : 3
/// @DnDArgument : "value" "sprite_width"
/// @DnDArgument : "value_1" "sprite_height"
/// @DnDArgument : "value_2" "false"
/// @DnDArgument : "var" "player_width"
/// @DnDArgument : "var_1" "player_height"
/// @DnDArgument : "var_2" "is_swinging"
global.player_width = sprite_width;
global.player_height = sprite_height;
global.is_swinging = false;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 614DE735
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_player_vacuum"
/// @DnDArgument : "layer" ""Spawning""
/// @DnDSaveInfo : "objectid" "obj_player_vacuum"
instance_create_layer(x + 0, y + 0, "Spawning", obj_player_vacuum);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 78238EC9
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_tool_pickaxe"
/// @DnDArgument : "layer" ""UI""
/// @DnDSaveInfo : "objectid" "obj_tool_pickaxe"
instance_create_layer(x + 0, y + 0, "UI", obj_tool_pickaxe);