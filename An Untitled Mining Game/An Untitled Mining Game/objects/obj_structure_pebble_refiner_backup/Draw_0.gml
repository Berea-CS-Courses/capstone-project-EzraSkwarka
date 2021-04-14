/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 7A2E5520
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_pebble_refiner"
/// @DnDSaveInfo : "sprite" "spr_pebble_refiner"
draw_sprite(spr_pebble_refiner, 0, x + 0, y + 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1AF7C74B
draw_set_colour($FFFFFFFF & $ffffff);
var l1AF7C74B_0=($FFFFFFFF >> 24);
draw_set_alpha(l1AF7C74B_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 0607AAAD
/// @DnDArgument : "x" "8"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "structure_level"
draw_text(x + 8, y + 8,  + string(structure_level));