/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 043C88DA
/// @DnDArgument : "expr" "global.is_paused"
if(global.is_paused)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 1AF1752C
	/// @DnDParent : 043C88DA
	/// @DnDArgument : "code" "draw_set_color(c_black);$(13_10)draw_set_alpha(.6)$(13_10)draw_rectangle(view_xport[0],view_yport[0], view_wport[0], view_hport[0], 0);$(13_10)draw_set_alpha(1)$(13_10)draw_set_color(c_white);"
	draw_set_color(c_black);
	draw_set_alpha(.6)
	draw_rectangle(view_xport[0],view_yport[0], view_wport[0], view_hport[0], 0);
	draw_set_alpha(1)
	draw_set_color(c_white);
}