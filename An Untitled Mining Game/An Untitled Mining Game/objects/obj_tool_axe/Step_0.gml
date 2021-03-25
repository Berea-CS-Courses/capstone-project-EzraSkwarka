/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 49123F89
/// @DnDArgument : "code" "// Have Vacuum Aura follow player on a delay$(13_10)x = global.player_x + 12; $(13_10)y = global.player_y + -2; $(13_10)if (global.current_tool != 2) instance_destroy();"
// Have Vacuum Aura follow player on a delay
x = global.player_x + 12; 
y = global.player_y + -2; 
if (global.current_tool != 2) instance_destroy();