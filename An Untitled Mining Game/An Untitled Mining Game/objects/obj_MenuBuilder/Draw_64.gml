switch (menu_to_draw) {
	case menu_type.pebble_refiner:
	if !(menu_drawn) {
			scr_draw_pebble_reffiner_menu();
		}
	menu_drawn = true;
		break;
	
	
	case menu_type.none: // this means only one "type" of menu can be active at a time
	default:
		menu_drawn = false;
		instance_destroy(obj_crafting_button);
		exit
}	