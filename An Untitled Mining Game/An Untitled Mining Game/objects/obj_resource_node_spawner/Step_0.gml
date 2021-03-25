/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
/// @DnDVersion : 1
/// @DnDHash : 4ED14E88
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "not" "1"
var l4ED14E88_0 = place_empty(x + 0, y + 0);
if (l4ED14E88_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2CBCD7BA
	/// @DnDParent : 4ED14E88
	/// @DnDArgument : "spriteind" "spr_room_tile_spawner_node"
	/// @DnDSaveInfo : "spriteind" "spr_room_tile_spawner_node"
	sprite_index = spr_room_tile_spawner_node;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 0B04845C
	/// @DnDParent : 4ED14E88
	/// @DnDArgument : "expr" "is_alarm_set"
	/// @DnDArgument : "not" "1"
	if(!(is_alarm_set))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0471AB50
		/// @DnDParent : 0B04845C
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "is_alarm_set"
		is_alarm_set = true;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 4F2568BF
		/// @DnDParent : 0B04845C
		/// @DnDArgument : "steps" "90"
		alarm_set(0, 90);
	}
}

/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
/// @DnDVersion : 1
/// @DnDHash : 61A9923A
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
var l61A9923A_0 = place_empty(x + 0, y + 0);
if (!l61A9923A_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 75530D2E
	/// @DnDParent : 61A9923A
	/// @DnDArgument : "imageind" "1"
	/// @DnDArgument : "spriteind" "spr_room_tile_spawner_node"
	/// @DnDSaveInfo : "spriteind" "spr_room_tile_spawner_node"
	sprite_index = spr_room_tile_spawner_node;
	image_index = 1;
}