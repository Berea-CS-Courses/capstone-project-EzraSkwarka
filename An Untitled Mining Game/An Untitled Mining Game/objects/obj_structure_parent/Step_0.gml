//No Menu is paused
if global.is_paused exit;

if (distance_to_object(obj_player) <= 16) {
			var is_close_enough = true;
		} else {
			is_close_enough = false;
		}

if (!menu_up) {
	if (is_close_enough and keyboard_check_pressed(ord("E"))) {
		menu_up = true;
		var _id = id;
		var _dm = draw_menu;
		with (obj_MenuBuilder) { //these can be wrapped into a function for later
			menu_active = true;
			menu_to_draw = _dm;
			struct_refrence = _id;
		}
	}
} else {
	if (menu_up and !is_close_enough) or (menu_up and keyboard_check_pressed(ord("E"))) {
		menu_up = false;
		with (obj_MenuBuilder) {
			menu_active = false;
			menu_to_draw = menu_type.none;
		}
		
	}	
}