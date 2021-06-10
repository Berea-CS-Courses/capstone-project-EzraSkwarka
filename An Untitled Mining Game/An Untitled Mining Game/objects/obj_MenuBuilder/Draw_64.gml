//Pause 
if global.is_paused {
	menu_to_draw = menu_type.none;
	with (obj_structure_parent) {
		menu_up = false;	
	}
}

//Build Menu
switch (menu_to_draw) {
	case menu_type.pebble_refiner:
		if !(menu_drawn) {
			var _button_count = 9;
			var _width = 256;
			var _height = 32;
			var _h_space = 8;
			var _i = 0;
			
			// Background
			var _background = scr_static_background_button(spr_blue_button_base, (screen_width / 2) - (.6 * _width), 70,
														   (1.2 * _width), (_button_count * (_height + _h_space) + 150))
			
			
			ds_list_add(button_ref_list, _background)
			//Buttons
			var _button;
			//3x Rock -> 1x Shiny rock, 60 tics
			_button = scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * _i, _width, _height, 
										"Make Shiny", [item.rock, 3], [item.shiny_rock, 1], x_base, y_base,
										struct_refrence, 60);
										_i++;
				ds_list_add(button_ref_list, _button)
				
			//3x Iron Ore, 1x Coal -> 1x Iron Ingot, 120 tics
			_button = scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * _i, _width, _height, 
										"Iron Bar", [item.iron_ore, 3, item.coal, 1], [item.iron_ingot, 1], x_base, y_base,
										struct_refrence, 120);
										_i++;
				ds_list_add(button_ref_list, _button)
				
			//3x Copper Ore, 1x Coal -> 1x Copper Ingot, 120 tics
			_button = scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * _i, _width, _height, 
										"Copper Bar", [item.copper_ore, 3, item.coal, 1], [item.copper_ingot, 1], x_base, y_base,
										struct_refrence, 120);
										_i++;
				ds_list_add(button_ref_list, _button)
				
			//3x Steel Ore, 1x Coal -> 1x Steel Ingot, 60 tics
			_button = scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * _i, _width, _height, 
										"Steel Bar", [item.steel_ore, 3, item.coal, 1], [item.steel_ingot, 1], x_base, y_base,
										struct_refrence, 120);
										_i++;
				ds_list_add(button_ref_list, _button)
				
			//3x Mythril Ore, 1x Coal -> 1x Mythril Ingot, 120 tics
			_button = scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * _i, _width, _height, 
										"Mythril Bar", [item.mythril_ore, 3, item.coal, 1], [item.mythril_ingot, 1], x_base, y_base,
										struct_refrence, 120);
										_i++;
				ds_list_add(button_ref_list, _button)
			
			//3x Uranium Ore, 1x Coal -> 1x Unranium Ingot, 120 tics
			_button = scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * _i, _width, _height, 
										"Uranium Bar", [item.uranium_ore, 3, item.coal, 1], [item.uranium_ingot, 1], x_base, y_base,
										struct_refrence, 120);
										_i++;
				ds_list_add(button_ref_list, _button)

			//3x Molten Ore, 1x Coal -> 1x Molten Ingot, 120 tics
			_button = scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * _i, _width, _height, 
										"Molten Bar", [item.molten_ore, 3, item.coal, 1], [item.molten_ingot, 1], x_base, y_base,
										struct_refrence, 120);
										_i++;
				ds_list_add(button_ref_list, _button)
			
			//1x Shinny rock -> 2x Shinny Rock, 600 tic
			_button = scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * _i, _width, _height, 
										"Infinate Shiny", [item.shiny_rock, 1], [item.shiny_rock, 2], x_base, y_base,
										struct_refrence, 600);
										_i++;
				ds_list_add(button_ref_list, _button)
			
			// nx Shinny Rocks -> Increse Struct Level, 0 ticks
			_button = scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * _i, _width, _height, 
										"Level up", [item.shiny_rock, floor(power(1.1, struct_refrence.structure_level))], ["Level up", "Stupid math, .5 rounds to 0, whatever"], x_base, y_base,
										struct_refrence, 0);
										_i++
				ds_list_add(button_ref_list, _button)
				ds_list_add(button_update_ref_list, _button)
				level_up_button = _button;
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
		crafting_menu_drawn = false;
		draw_craft = false;
		level_up_button = 0;
		while (ds_list_size(button_ref_list) > 0) {
			with(button_ref_list[|0]) {
				instance_destroy();
			}
			ds_list_delete(button_ref_list, 0);
		}
		while (ds_list_size(button_update_ref_list) > 0) {
			ds_list_delete(button_update_ref_list, 0);
		}
		exit
}	


//Manipulate Menu
if (menu_drawn) {
	if draw_craft {
		if !(crafting_menu_drawn){
			var i = 0; while (i < ds_list_size(button_ref_list)) {
				with (button_ref_list[|i]) {
					x -= 250;
				}
				i++;
			}
			//Crafting buttons
			_button = scr_create_button(561, 250, 284, 50, "Craft", scr_call_crafting)
			ds_list_add(button_ref_list, _button)
			crafting_menu_drawn = true;
		}
			//Background
			var _top_left_x = 553;
			var _top_left_y = 120;
			var _width = 300;
			var _height = 250;
			var _button = scr_static_background_button(spr_blue_button_base, _top_left_x, _top_left_y, _width, _height);
			ds_list_add(button_ref_list, _button)
			
			// Recipie Info			
			draw_set_color(c_white);
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_set_font(fnt_basic_large);
	
			//Write
			draw_text(_top_left_x + _width/2, _top_left_y + 20, recipie_name);

			//Reset format
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			draw_set_color(c_black);

			

		}
	
	
	
}