if (global.is_paused) exit;

if (!building) {
	window_set_cursor(cr_default);
} else {
	if (mouse_check_button_pressed(mb_right)) {
		building = false;
		global.is_paused = true;
		with (obj_structures_menu) {
			show_structures_menu = true;
		}
		window_set_cursor(cr_default);
		exit;
	}
	
	window_set_cursor(cr_none);
	mousex = mouse_x;
	mousey = mouse_y;
	
	// Determine active struct
	/*if (mouse_wheel_up()) {selected_struct += 1};
	if (mouse_wheel_down()) {selected_struct -= 1};
	
	if (selected_struct >= struct.height) {selected_struct = 1};
	if (selected_struct <= 0) {selected_struct = struct.height -1};*/
	
	switch (selected_struct) {
		case struct.pebble_refiner:
			active_sprite = spr_struct_pebble_refiner;
			active_object = struct.pebble_refiner
			required_mats = [item.rock, 10];
			break;
		case struct.mouse_tool:
			active_sprite = spr_struct_mouse_level_station;
			active_object = struct.mouse_tool;
			required_mats = [item.shiny_rock, 10];
			break;
		case struct.points_shop:
			active_sprite = spr_struct_points_shop;
			active_object = struct.points_shop;
			required_mats = [item.wood, 50];
			break;
		
		default:
			exit;
	}
	
	//Determine if area is clear
	var cH = cellHeight;
	var cW = cellWidth;
	mousex_adjusted = (mousex div cW);
	mousey_adjusted = (mousey div cH);
	if ((mousex_adjusted mod 2) == 0) {
		mousey_adjusted = (mousey div cH) * cH + cell_offset_y + (cH/2);
	} else {
		mousey_adjusted = (mousey div cH) * cH + cell_offset_y + cH;	
	}
	mousex_adjusted = mousex_adjusted * cW + cell_offset_x + (cW/2);
	
	if (!place_free(mousex_adjusted, mousey_adjusted)) {
		hex_empty = false;	
	} else {
		hex_empty = true;
	}
	
	//Build
	if (mouse_check_button_pressed(mb_left) and scr_have_mats(required_mats) and hex_empty) {
		scr_create_struct(mousex_adjusted, mousey_adjusted, active_object);
		scr_consume_mats(required_mats)
	}
}