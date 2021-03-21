/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3B6A0D7A
/// @DnDArgument : "code" "if (distance_to_object(obj_player) <= 16) {$(13_10)	if (global.num_pebbles >= 3) {$(13_10)		instance_create_layer(x + 0, y + 0, "Active", obj_structure_pebble_refiner);$(13_10)		global.num_pebbles -= 3;$(13_10)		instance_destroy()$(13_10);	}$(13_10)}"
if (distance_to_object(obj_player) <= 16) {
	if (global.num_pebbles >= 3) {
		instance_create_layer(x + 0, y + 0, "Active", obj_structure_pebble_refiner);
		global.num_pebbles -= 3;
		instance_destroy()
;	}
}