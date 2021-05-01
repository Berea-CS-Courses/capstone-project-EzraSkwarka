if !menu_active exit;

switch (menu_to_draw) {
	case menu_type.pebble_refiner:
		scr_create_button(100,100,100,100,"test",-1);
		break;
	
	
	case menu_type.none:
	default:
		instance_destroy(obj_button);
		exit
}	