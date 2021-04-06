/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5BA2672D
/// @DnDArgument : "expr" "global.is_paused"
if(global.is_paused)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 5B646342
	/// @DnDParent : 5BA2672D
	/// @DnDArgument : "font" "fnt_basic_large"
	/// @DnDSaveInfo : "font" "fnt_basic_large"
	draw_set_font(fnt_basic_large);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 2FFFA878
	/// @DnDParent : 5BA2672D
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""Current Pebbles: ""
	/// @DnDArgument : "var" "global.num_pebbles"
	draw_text(x + 0, y + 0, string("Current Pebbles: ") + string(global.num_pebbles));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 51A0A161
	/// @DnDParent : 5BA2672D
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
	/// @DnDParent : 5BA2672D
	/// @DnDArgument : "var" "has_had_shiny_rocks"
	/// @DnDArgument : "value" "true"
	if(has_had_shiny_rocks == true)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 66DE555C
		/// @DnDParent : 1090B0D4
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "20"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "caption" ""Current Shiny Rocks: ""
		/// @DnDArgument : "var" "global.num_shiny_rocks"
		draw_text(x + 0, y + 20, string("Current Shiny Rocks: ") + string(global.num_shiny_rocks));
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3EA41200
	/// @DnDParent : 5BA2672D
	/// @DnDArgument : "var" "global.mouse_level"
	/// @DnDArgument : "op" "2"
	if(global.mouse_level > 0)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 029EDB80
		/// @DnDParent : 3EA41200
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "40"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "caption" ""Mouse Level: ""
		/// @DnDArgument : "var" "global.mouse_level"
		draw_text(x + 0, y + 40, string("Mouse Level: ") + string(global.mouse_level));
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4CA71FD9
	/// @DnDParent : 5BA2672D
	/// @DnDArgument : "var" "global.renown"
	/// @DnDArgument : "op" "2"
	if(global.renown > 0)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 03C78649
		/// @DnDParent : 4CA71FD9
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "60"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "caption" ""Renown: ""
		/// @DnDArgument : "var" "global.renown"
		draw_text(x + 0, y + 60, string("Renown: ") + string(global.renown));
	}

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 673262B9
	/// @DnDParent : 5BA2672D
	/// @DnDArgument : "font" "fnt_basic"
	/// @DnDSaveInfo : "font" "fnt_basic"
	draw_set_font(fnt_basic);
}