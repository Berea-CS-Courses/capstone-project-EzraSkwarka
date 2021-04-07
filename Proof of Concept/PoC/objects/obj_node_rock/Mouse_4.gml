/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7D5F5366
/// @DnDArgument : "code" "if (distance_to_object(obj_player) <= 16) {$(13_10)	instance_destroy();$(13_10)	bonus_multiplier = (1 + .1 * (global.mouse_level + global.renown));$(13_10)	repeat(floor(3 * bonus_multiplier))	{$(13_10)	// Create 3 Instances of Pebble$(13_10)		instance_create_layer(x + 0, y + 0, "Active", obj_mat_pebble);$(13_10)	}$(13_10)}"
if (distance_to_object(obj_player) <= 16) {
	instance_destroy();
	bonus_multiplier = (1 + .1 * (global.mouse_level + global.renown));
	repeat(floor(3 * bonus_multiplier))	{
	// Create 3 Instances of Pebble
		instance_create_layer(x + 0, y + 0, "Active", obj_mat_pebble);
	}
}