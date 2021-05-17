if global.is_paused {
	menu_to_draw = menu_type.none;
	with (obj_structure_parent) {
		menu_up = false;	
	}
}


switch (menu_to_draw) {
	case menu_type.pebble_refiner:
		if !(menu_drawn) {
			var _width = 250;
			var _height = 25;
			var _h_space = 5;
			//3x Rock -> 1x Shiny rock, 60 tics
			scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * 0, _width, _height, 
										"Make Shiny", [item.rock, 3], [item.shiny_rock, 1], x_base, y_base,
										struct_refrence, 60);
			//1x Shinny rock -> 1x Carrot?, 600 tic
			scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * 1, _width, _height, 
										"Infinate Shiny", [item.shiny_rock, 1], [item.shiny_rock, 2], x_base, y_base,
										struct_refrence, 600);
			// nx Shinny Rocks -> Increse Struct Level, 0 ticks
			scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * 2, _width, _height, 
										"Level up", [item.shiny_rock, floor(power(1.1, struct_refrence.structure_level))], ["Level up", "Stupid math, .5 rounds to 0, whatever"], x_base, y_base,
										struct_refrence, 0);
			}
			
		menu_drawn = true;
		break;
	case menu_type.mouse_tool:
	if !(menu_drawn) {
			var _width = 250;
			var _height = 25;
			var _h_space = 5;
			//3x Rock -> 1x Shiny rock, 60 tics
			scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * 0, _width, _height, 
										"Level up!", [item.shiny_rock, floor(power(1.1, scr_get_mouse_level()))], ["Level up", ""], x_base, y_base,
										struct_refrence, 60);
			}
			
		menu_drawn = true;
		break;
	
	case menu_type.points_shop:
	if !(menu_drawn) {
			var _width = 250;
			var _height = 25;
			var _h_space = 5;
			//Renown -> Pick Power, 600 tics
			scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * 0, _width, _height, 
										"Strengthen Pickaxe", [item.renown_ref, floor(power(1.1, obj_relics_menu.pick_power))], ["Renown", minor_relics.pick_power], x_base, y_base,
										struct_refrence, 600);
			}
			
		menu_drawn = true;
		break
	
	
	case menu_type.none: // this means only one "type" of menu can be active at a time
	default:
		menu_drawn = false;
		instance_destroy(obj_crafting_button);
		exit
}	