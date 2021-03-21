/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7D5F5366
/// @DnDArgument : "code" "if (distance_to_object(obj_player) <= 16) {$(13_10)	instance_destroy();$(13_10)}"
if (distance_to_object(obj_player) <= 16) {
	instance_destroy();
}