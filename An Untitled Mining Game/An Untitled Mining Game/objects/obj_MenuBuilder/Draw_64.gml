switch (menu_to_draw) {
	case menu_type.pebble_refiner:
		var _width = 100;
		scr_create_button(screen_width/2 -  _width/2, 100, _width, 100, "Make Shiny", scr_create_obj_item(item.shiny_rock, x_base, y_base));
		break;
	
	
	case menu_type.none: // this means only one "type" of menu can be active at a time
	default:
		instance_destroy(obj_button);
		exit
}	