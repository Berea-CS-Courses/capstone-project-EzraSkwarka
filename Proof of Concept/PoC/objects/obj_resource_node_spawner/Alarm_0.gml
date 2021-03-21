/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
/// @DnDVersion : 1
/// @DnDHash : 78D4F13D
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "not" "1"
var l78D4F13D_0 = place_empty(x + 0, y + 0);
if (l78D4F13D_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3F46CCF1
	/// @DnDParent : 78D4F13D
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_node_rock"
	/// @DnDArgument : "layer" ""Active""
	/// @DnDSaveInfo : "objectid" "obj_node_rock"
	instance_create_layer(x + 0, y + 0, "Active", obj_node_rock);

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 570F7DEB
	/// @DnDParent : 78D4F13D
	/// @DnDArgument : "imageind" "1"
	/// @DnDArgument : "spriteind" "spr_room_tile_spawner_node"
	/// @DnDSaveInfo : "spriteind" "spr_room_tile_spawner_node"
	sprite_index = spr_room_tile_spawner_node;
	image_index = 1;
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3A829BEB
/// @DnDArgument : "steps" "90"
alarm_set(0, 90);