/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3AB636E2
/// @DnDInput : 3
/// @DnDArgument : "expr_1" "true"
/// @DnDArgument : "var" "structure_level"
/// @DnDArgument : "var_1" "in_use"
/// @DnDArgument : "var_2" "needed_shiny_rocks"
structure_level = 0;
in_use = true;
needed_shiny_rocks = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 2AF789E5
/// @DnDArgument : "var" "global.mouse_level"
global.mouse_level = 0;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3D346955
/// @DnDArgument : "steps" "60"
alarm_set(0, 60);