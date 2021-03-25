/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 56B55953
/// @DnDArgument : "var" "random_number"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "100"
random_number = floor(random_range(0, 100 + 1));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 53044A59
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "is_alarm_set"
is_alarm_set = true;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0E9F5392
/// @DnDArgument : "steps" "90"
alarm_set(0, 90);