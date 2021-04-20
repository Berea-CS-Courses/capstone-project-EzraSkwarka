if (keyboard_check_pressed(ord("B"))) {
	building = !building;
}


if (building) {
	mousex = mouse_x;
	mousey = mouse_y;
	
	if (mouse_wheel_up()) {selected_struct += 1};
	if (mouse_wheel_down()) {selected_struct -= 1};
	
	if (selected_struct >= struct.height) {selected_struct = 0};
	if (selected_struct < 0) {selected_struct = struct.height -1};
	
	// Determine active struct
	switch (selected_struct) {
		case 0:
			active_sprite = spr_pebble_refiner;
			active_object = obj_structure_pebble_refiner;
			required_mats = [item.rock, 10];
			break;
		case 1:
			active_sprite = spr_mouse_level_station;
			active_object = obj_structure_mouse_tool;
			required_mats = [item.shiny_rock, 10];
			break;
		default:
			exit;
	}
	
	if (mouse_check_button_pressed(mb_left) and scr_have_mats_for_struct(required_mats)) {
		scr_create_struct(mousex_adjusted, mousey_adjusted, active_object);
		scr_consume_mats_for_struct(required_mats)
	}
}