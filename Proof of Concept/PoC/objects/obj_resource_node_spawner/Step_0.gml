/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
/// @DnDVersion : 1
/// @DnDHash : 7E817152
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
var l7E817152_0 = place_empty(x + 0, y + 0);
if (!l7E817152_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 48E55F2A
	/// @DnDParent : 7E817152
	/// @DnDArgument : "imageind" "1"
	/// @DnDArgument : "spriteind" "spr_room_tile_spawner_mask"
	/// @DnDSaveInfo : "spriteind" "spr_room_tile_spawner_mask"
	sprite_index = spr_room_tile_spawner_mask;
	image_index = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 770AD0A8
	/// @DnDParent : 7E817152
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "is_obstructed"
	is_obstructed = 1;
}

/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
/// @DnDVersion : 1
/// @DnDHash : 063CFE87
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "not" "1"
var l063CFE87_0 = place_empty(x + 0, y + 0);
if (l063CFE87_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 58447FCA
	/// @DnDParent : 063CFE87
	/// @DnDArgument : "spriteind" "spr_room_tile_spawner_mask"
	/// @DnDSaveInfo : "spriteind" "spr_room_tile_spawner_mask"
	sprite_index = spr_room_tile_spawner_mask;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73A912BC
	/// @DnDParent : 063CFE87
	/// @DnDArgument : "var" "is_obstructed"
	is_obstructed = 0;
}