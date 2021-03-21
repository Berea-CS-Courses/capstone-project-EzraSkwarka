/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 1725A333
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_player"
/// @DnDSaveInfo : "object" "obj_player"
var l1725A333_0 = instance_place(x + 0, y + 0, obj_player);
if ((l1725A333_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7CEC72A4
	/// @DnDParent : 1725A333
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "in_range"
	in_range = true;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0653B456
	/// @DnDParent : 1725A333
	/// @DnDArgument : "imageind" "1"
	/// @DnDArgument : "spriteind" "spr_room_tile_reset"
	/// @DnDSaveInfo : "spriteind" "spr_room_tile_reset"
	sprite_index = spr_room_tile_reset;
	image_index = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1E6452B1
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7023ECFC
	/// @DnDParent : 1E6452B1
	/// @DnDArgument : "spriteind" "spr_room_tile_reset"
	/// @DnDSaveInfo : "spriteind" "spr_room_tile_reset"
	sprite_index = spr_room_tile_reset;
	image_index = 0;
}