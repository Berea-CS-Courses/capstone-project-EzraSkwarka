if (keyboard_check_pressed(ord("B"))) {
	building = !building;
}


if (building) {
	mousex = mouse_x;
	mousey = mouse_y;
	
	if (mouse_check_button_pressed(mb_left)) {
		scr_create_struct(mousex, mousey, obj_structure_pebble_refiner);
	}
}