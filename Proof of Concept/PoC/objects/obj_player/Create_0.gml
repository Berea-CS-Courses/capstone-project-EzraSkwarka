/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5D4D9367
/// @DnDArgument : "code" "var global.player_width = sprite_width;$(13_10)var global.player_height = sprite_height;$(13_10)"
var global.player_width = sprite_width;
var global.player_height = sprite_height;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 614DE735
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_player_vacuum"
/// @DnDArgument : "layer" ""Spawning""
/// @DnDSaveInfo : "objectid" "obj_player_vacuum"
instance_create_layer(x + 0, y + 0, "Spawning", obj_player_vacuum);