if (distance_to_object(obj_player) <= 16) {
			var is_close_enough = true;
		} else {
			is_close_enough = false;
		}

if (!menu_up) {
	if (is_close_enough and keyboard_check(ord("E"))) {
		menu_up = true;
		var _x = x;
		var _y = y;
		with (obj_MenuBuilder) { //these can be wrapped into a function for later
			menu_active = true;
			menu_to_draw = menu_type.pebble_refiner;
			x_base = _x;
			y_base = _y;
		}
	}
} else {
	if (menu_up and !is_close_enough) {
		menu_up = false;
		with (obj_MenuBuilder) {
			menu_active = false;
			menu_to_draw = menu_type.none;
		}
		
	}
}