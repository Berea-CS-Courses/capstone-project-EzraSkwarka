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
			var _i = 0;
			//3x Rock -> 1x Shiny rock, 60 tics
			scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * _i, _width, _height, 
										"Make Shiny", [item.rock, 3], [item.shiny_rock, 1], x_base, y_base,
										struct_refrence, 60);
										_i++;
			//3x Iron Ore, 1x Coal -> 1x Iron Ingot, 120 tics
			scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * _i, _width, _height, 
										"Iron Bar", [item.iron_ore, 3, item.coal, 1], [item.iron_ingot, 1], x_base, y_base,
										struct_refrence, 120);
										_i++;
			//3x Copper Ore, 1x Coal -> 1x Copper Ingot, 120 tics
			scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * _i, _width, _height, 
										"Copper Bar", [item.copper_ore, 3, item.coal, 1], [item.copper_ingot, 1], x_base, y_base,
										struct_refrence, 120);
										_i++;
			//3x Steel Ore, 1x Coal -> 1x Steel Ingot, 60 tics
			scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * _i, _width, _height, 
										"Steel Bar", [item.steel_ore, 3, item.coal, 1], [item.steel_ingot, 1], x_base, y_base,
										struct_refrence, 120);
										_i++;
			//3x Mythril Ore, 1x Coal -> 1x Mythril Ingot, 120 tics
			scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * _i, _width, _height, 
										"Mythril Bar", [item.mythril_ore, 3, item.coal, 1], [item.mythril_ingot, 1], x_base, y_base,
										struct_refrence, 120);
										_i++;
			//3x Uranium Ore, 1x Coal -> 1x Unranium Ingot, 120 tics
			scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * _i, _width, _height, 
										"Uranium Bar", [item.uranium_ore, 3, item.coal, 1], [item.uranium_ingot, 1], x_base, y_base,
										struct_refrence, 120);
										_i++;
			//3x Molten Ore, 1x Coal -> 1x Molten Ingot, 120 tics
			scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * _i, _width, _height, 
										"Molten Bar", [item.molten_ore, 3, item.coal, 1], [item.molten_ingot, 1], x_base, y_base,
										struct_refrence, 120);
										_i++;
			//1x Shinny rock -> 2x Shinny Rock, 600 tic
			scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * _i, _width, _height, 
										"Infinate Shiny", [item.shiny_rock, 1], [item.shiny_rock, 2], x_base, y_base,
										struct_refrence, 600);
										_i++;
			// nx Shinny Rocks -> Increse Struct Level, 0 ticks
			level_up_button = scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * _i, _width, _height, 
										"Level up", [item.shiny_rock, floor(power(1.1, struct_refrence.structure_level))], ["Level up", "Stupid math, .5 rounds to 0, whatever"], x_base, y_base,
										struct_refrence, 0);
										_i++
			}
		//recalc inputs for recipies with non-static inputs
		level_up_button.input = [item.shiny_rock, floor(power(1.1, struct_refrence.structure_level))];

		menu_drawn = true;
		break;
	case menu_type.mouse_tool:
	if !(menu_drawn) {
			var _width = 250;
			var _height = 25;
			var _h_space = 5;
			//3x Rock -> 1x Shiny rock, 60 tics
			level_up_button = scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * 0, _width, _height, 
										"Level up!", [item.shiny_rock, floor(power(1.1, scr_get_mouse_level()))], ["Level up", ""], x_base, y_base,
										struct_refrence, 60);
			}
		//recalc inputs for recipies with non-static inputs
		level_up_button.input =  [item.shiny_rock, floor(power(1.1, scr_get_mouse_level()))];
		
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
		level_up_button = 0;
		instance_destroy(obj_crafting_button);
		exit
}	

