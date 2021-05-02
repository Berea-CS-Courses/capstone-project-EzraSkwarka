switch (menu_to_draw) {
	case menu_type.pebble_refiner:
		var _width = 100;
		var button = scr_create_crafting_button(screen_width/2 -  _width/2, 100, _width, 100, "Make Shiny");
		var _x = x_base;
		var _y = y_base;
		with (button) {
			item_type = item.shiny_rock;
			x_loc = _x;
			y_loc = _y;
			
		}
		break;
	
	
	case menu_type.none: // this means only one "type" of menu can be active at a time
	default:
		instance_destroy(obj_crafting_button);
		exit
}	