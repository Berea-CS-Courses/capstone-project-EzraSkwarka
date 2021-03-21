/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 2FFFA878
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Current Pebbles: ""
/// @DnDArgument : "var" "global.num_pebbles"
draw_text(x + 0, y + 0, string("Current Pebbles: ") + string(global.num_pebbles));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 51A0A161
/// @DnDArgument : "var" "global.num_shiny_rocks"
/// @DnDArgument : "op" "2"
if(global.num_shiny_rocks > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6170D668
	/// @DnDParent : 51A0A161
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "has_had_shiny_rocks"
	has_had_shiny_rocks = true;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1090B0D4
/// @DnDArgument : "var" "has_had_shiny_rocks"
/// @DnDArgument : "value" "true"
if(has_had_shiny_rocks == true)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 66DE555C
	/// @DnDParent : 1090B0D4
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "15"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""Current Shiny Rocks: ""
	/// @DnDArgument : "var" "global.num_shiny_rocks"
	draw_text(x + 0, y + 15, string("Current Shiny Rocks: ") + string(global.num_shiny_rocks));
}