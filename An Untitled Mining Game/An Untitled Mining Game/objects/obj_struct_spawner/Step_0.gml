if (keyboard_check_pressed(ord("B"))) {
	building = !building;
}


if (building) {
	mousex = mouse_x;
	mousey = mouse_y;
	
	if (mouse_check_button_pressed(mb_left) and scr_have_mats_for_struct(required_mats)) {
		scr_create_struct(mousex_adjusted, mousey_adjusted, active_object);
		scr_consume_mats_for_struct(required_mats)
	}
}