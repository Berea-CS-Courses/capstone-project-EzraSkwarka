/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4649E3F1
/// @DnDArgument : "expr" "global.is_swinging"
/// @DnDArgument : "not" "1"
if(!(global.is_swinging))
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 1DD120E6
	/// @DnDParent : 4649E3F1
	/// @DnDArgument : "value" "true"
	/// @DnDArgument : "var" "global.is_swinging"
	global.is_swinging = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 6438A8B2
	/// @DnDParent : 4649E3F1
	alarm_set(0, 30);

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1686BB56
	/// @DnDParent : 4649E3F1
	/// @DnDArgument : "spriteind" "spr_pickaxe_swing"
	/// @DnDSaveInfo : "spriteind" "spr_pickaxe_swing"
	sprite_index = spr_pickaxe_swing;
	image_index = 0;
}