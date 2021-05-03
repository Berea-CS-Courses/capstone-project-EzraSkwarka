switch (menu_to_draw) {
	case menu_type.pebble_refiner:
		if !(menu_drawn) {
			var _width = 100;
			scr_create_crafting_button(screen_width/2 -  _width/2, 100, _width, 100, 
										"Make Shiny", [item.rock, 3], [item.shiny_rock, 1], x_base, y_base,
										struct_refrence, 60);
			}
		menu_drawn = true;
		break;
	
	
	case menu_type.none: // this means only one "type" of menu can be active at a time
	default:
		menu_drawn = false;
		instance_destroy(obj_crafting_button);
		exit
}	