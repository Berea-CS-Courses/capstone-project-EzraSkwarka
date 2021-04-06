/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4026BE75
/// @DnDArgument : "code" "global.renown += max(floor(log2(global.num_shiny_rocks)),0);"
global.renown += max(floor(log2(global.num_shiny_rocks)),0);

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 5B5D672F
/// @DnDInput : 3
/// @DnDArgument : "var" "global.num_pebbles"
/// @DnDArgument : "var_1" "global.num_shiny_rocks"
/// @DnDArgument : "var_2" "global.mouse_level"
global.num_pebbles = 0;
global.num_shiny_rocks = 0;
global.mouse_level = 0;

/// @DnDAction : YoYo Games.Rooms.Restart_Room
/// @DnDVersion : 1
/// @DnDHash : 290208F0
room_restart();