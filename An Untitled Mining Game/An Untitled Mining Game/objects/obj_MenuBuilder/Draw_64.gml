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
			Recipes = [
			// [Recipe Name, [Input Array], [Output Array], Base Crafting Time, "Button Display Text", "Flavor Text"]

			//3x Rock -> 1x Shiny rock, 60 tics
				["Make Shiny", [item.rock, 3], [item.shiny_rock, 1], 60,
					"Make Shiny", "Its a rock, that's shiny"],
			//3x Iron Ore, 1x Coal -> 1x Iron Ingot, 120 tics
				["Iron Bar", [item.iron_ore, 3, item.coal, 1], [item.iron_ingot, 1], 120, 
					"Iron Bar", ""],
			//3x Copper Ore, 1x Coal -> 1x Copper Ingot, 120 tics
				["Copper Bar", [item.copper_ore, 3, item.coal, 1], [item.copper_ingot, 1], 120, 
					"Copper Bar", ""],
			//3x Steel Ore, 1x Coal -> 1x Steel Ingot, 60 tics
				["Steel Bar", [item.steel_ore, 3, item.coal, 1], [item.steel_ingot, 1], 120, 
					"Steel Bar", ""],
			//3x Mythril Ore, 1x Coal -> 1x Mythril Ingot, 120 tics
				["Mythril Bar", [item.mythril_ore, 3, item.coal, 1], [item.mythril_ingot, 1], 120, 
					"Mythril Bar", ""],
			//3x Uranium Ore, 1x Coal -> 1x Unranium Ingot, 120 tics
				["Uranium Bar", [item.uranium_ore, 3, item.coal, 1], [item.uranium_ingot, 1], 120, 
					"Uranium Bar", ""],
			//3x Molten Ore, 1x Coal -> 1x Molten Ingot, 120 tics
				["Molten Bar", [item.molten_ore, 3, item.coal, 1], [item.molten_ingot, 1], 120, 
					"Molten Bar", ""],
			//1Level Up
				["Level Up", [item.shiny_rock, floor(power(1.1, struct_refrence.structure_level))], ["Level up", ""], 0,
					"Level Up", ""],

			]
			
			var _button_count = array_length(Recipes);
			var _width = 256;
			var _height = 32;
			var _h_space = 8;
			var _i = 0;
			
			// Background
			var _background = scr_static_background_button(spr_brown_button_base, (screen_width / 2) - (.6 * _width), 70,
														   (1.2 * _width), (_button_count * (_height + _h_space) + 150))
				ds_list_add(button_ref_list, _background)
			
			//Buttons
			var _button;
			repeat(_button_count - 1) {
				_button = scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * _i, _width, _height, 
										Recipes[_i], struct_refrence);					
				ds_list_add(button_ref_list, _button)
				_i++;
			}
			
			//Level Up Button
			_button = scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * _i, _width, _height, 
										Recipes[array_length(Recipes) - 1], struct_refrence);
				ds_list_add(button_ref_list, _button)
				ds_list_add(button_update_ref_list, _button)
				level_up_button = _button;
				
			menu_drawn = true;
		}
		
		//Update Dynamic Inputs
			//Level Up Button
				//Cost
				Recipes[@ array_length(Recipes) - 1][@ 1][@ 1] = floor(power(1.1, struct_refrence.structure_level))
					button_update_ref_list[| 0].input = Recipes[@ 0][@ 1];
				//Time
				Recipes[@ array_length(Recipes) - 1][@ 3] = 60 * struct_refrence.structure_level;
					button_update_ref_list[| 0].crafting_time = Recipes[@ 0][@ 3];

		break;
		
	case menu_type.mouse_tool:
	if !(menu_drawn) {
		Recipes = [
		//Level Up Button
				["Level Up", [item.shiny_rock, floor(power(1.1, struct_refrence.structure_level))], ["Level up", ""], 60,
					"Level Up", ""],
		];
		
		var _button_count = array_length(Recipes);
		var _width = 256;
		var _height = 32;
		var _h_space = 8;
		var _i = 0;
			
		// Background
		var _background = scr_static_background_button(spr_brown_button_base, (screen_width / 2) - (.6 * _width), 70,
														(1.2 * _width), (_button_count * (_height + _h_space) + 150))
			ds_list_add(button_ref_list, _background)
				
		//Level Up Button
		_button = scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * _i, _width, _height, 
									Recipes[array_length(Recipes) - 1], struct_refrence);
			ds_list_add(button_ref_list, _button)
			ds_list_add(button_update_ref_list, _button)
			level_up_button = _button;
				
		menu_drawn = true;
	}
	//Update Dynamic Inputs
		//Level Up Button
			//Cost
			Recipes[@ 0][@ 1][@ 1] = floor(power(1.1, scr_get_mouse_level()));
				button_update_ref_list[|0 ].input = Recipes[@ 0][@ 1];
			//Time
			Recipes[@ 0][@ 3] = 60 * scr_get_mouse_level();
				button_update_ref_list[|0 ].crafting_time = Recipes[@ 0][@ 3];
	break;
	
	case menu_type.points_shop:
	if !(menu_drawn) {
		Recipes = [
		//Renown -> Pick Power, 600 tics
				["Pick Power", [item.renown_ref, floor(power(1.1, obj_relics_menu.pick_power))], ["Renown", minor_relics.pick_power], 600,
					"Level Up Relic", ""],
		];
		
		var _button_count = array_length(Recipes);
		var _width = 256;
		var _height = 32;
		var _h_space = 8;
		var _i = 0;
			
		// Background
		var _background = scr_static_background_button(spr_brown_button_base, (screen_width / 2) - (.6 * _width), 70,
														(1.2 * _width), (_button_count * (_height + _h_space) + 150))
			ds_list_add(button_ref_list, _background)
		
		//Buttons
		var _button;
		repeat(_button_count) {
			_button = scr_create_crafting_button(screen_width/2 -  _width/2, 100 + (_height + _h_space) * _i, _width, _height, 
									Recipes[_i], struct_refrence);					
			ds_list_add(button_ref_list, _button)
			_i++;
		}
		//Level Up Button
			//This Struct doesn't have a level
				
		menu_drawn = true;
	}
	//Update Dynamic Inputs
		//Level Up Button
			//Cost
			Recipes[@ 0][@ 1][@ 1] = floor(power(1.1, obj_relics_menu.pick_power));
				button_update_ref_list[| 0].input = Recipes[@ 0][@ 1];
			//Time
			Recipes[@ 0][@ 3] = 60 * obj_relics_menu.pick_power;
				button_update_ref_list[| 0].crafting_time = Recipes[@ 0][@ 3];

	break
	
	
	case menu_type.none: // this means only one "type" of menu can be active at a time
	default:
		menu_drawn = false;
		if instance_exists(struct_refrence) { 
			struct_refrence.menu_up = false;
		}
		crafting_menu_drawn = false;
		draw_craft = false;
		level_up_button = 0;
		item_amount = 1;
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
		//Guidelines
			var _top_left_x = 553;
			var _top_left_y = 120;
			var _width = 300;
			var _height = 400;
		//Clickable Buttons
			if !(crafting_menu_drawn){
				var i = 0; while (i < ds_list_size(button_ref_list)) {
					with (button_ref_list[|i]) {
						x -= 250;
					}
					i++;
				}
				//Crafting buttons
				_button = instance_create_layer(_top_left_x + (.24 * _width), _top_left_y + (.62 * _height), "UI", obj_craft_button)
				ds_list_add(button_ref_list, _button)
				
				
				_button = instance_create_layer(_top_left_x + (.03 * _width), _top_left_y + (.63 * _height), "UI", obj_arrow_button)
					_button.left = true;
				ds_list_add(button_ref_list, _button)
				
				
				_button = instance_create_layer(_top_left_x + (.78 * _width), _top_left_y + (.63 * _height), "UI", obj_arrow_button)
				ds_list_add(button_ref_list, _button)
				
				
				crafting_menu_drawn = true;
			}
		//Background
			var _button = scr_static_background_button(spr_brown_button_base, _top_left_x, _top_left_y, _width, _height);
			ds_list_add(button_ref_list, _button)
			
		// Recipie Info			
			draw_set_color(c_white);
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_set_font(fnt_basic_large);
	
		//Recipe Name
			draw_text(_top_left_x + _width/2, _top_left_y + 20, recipe_name);

		//Reset format
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			draw_set_color(c_black);

		// Input
			draw_set_font(fnt_basic);
			draw_set_color(c_white);
			
			// Adjust input for quantity
				var _display_input = [];
				array_copy(_display_input, 0, input, 0, array_length(input));
				var i = 0; repeat (array_length(input)/2) {
					_display_input[@ i + 1] = (input[i + 1] * item_amount)
					i += 2;
					}
				var _display_time = crafting_time * item_amount;
			
			//Display
			draw_text(_top_left_x + 20, _top_left_y + 40, "Cost: " + scr_mat_array_to_text(_display_input));
			draw_text(_top_left_x + 20, _top_left_y + 60, "Crafting Time: " + string(floor(_display_time/60)) + " seconds");
			draw_text(_top_left_x + 20, _top_left_y + 80, "Amount: " + string(item_amount));
			
			draw_set_color(c_black);
		
			


		}
	
	
	
}