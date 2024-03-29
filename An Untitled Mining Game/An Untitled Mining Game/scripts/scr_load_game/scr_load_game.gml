// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_load_game() 
{
// Load Game
var node_type_array = obj_SaveTracker.nta;
var load_kill_list = obj_SaveTracker.lkl;
// for every parant instance, build a map to append to the list
var i = 0; repeat(array_length(node_type_array)) {
	with (node_type_array[i])
	{
		instance_destroy();
	}
	i++;
}
var i = 0; repeat(array_length(load_kill_list)) {
	with (load_kill_list[i])
	{
		instance_destroy();
	}
	i++;
}

// put it back!!!
if (file_exists("savegame.sav")) {
	var _buffer = buffer_load("savegame.sav");
	var in_string = buffer_read( _buffer, buffer_string);
	buffer_delete(_buffer);
	
	var load_data = json_parse(in_string);
	
	while (array_length(load_data) > 0 ) {
		var load_entity = array_pop(load_data);
		with (instance_create_layer(load_entity.x, load_entity.y, load_entity.layer, asset_get_index(load_entity.obj))) {
			switch (load_entity.obj) {
			//-----Nodes
				case "obj_NodeController":
					node_spawn_limit = load_entity.node_spawn_limit;
					nodes_spawned = load_entity.nodes_spawned;
					node_region_spawns = load_entity.node_region_spawns;
					node_region_spawn_limit = load_entity.node_region_spawn_limit;
					break;
				case "obj_node_parent":
					_health = load_entity._health;
					max_health = load_entity.max_health;
					spr_to_draw = load_entity.spr_to_draw;
					mask_index = load_entity.mask_index;
					drop_array = load_entity.drop_array;
					tool_to_use = load_entity.tool_to_use;
					region = load_entity.region;
					break;
				case "obj_mob_parent":
					timer = load_entity.timer;
					mob_type = load_entity.mob_type;
					follow_radius = load_entity.follow_radius;
					attack_radius = load_entity.attack_radius;
					_health = load_entity._health;
					max_health = load_entity.max_health;
					attack_power = load_entity.attack_power;
					mask_index= load_entity.mask_index;
					drop_array = load_entity.drop_array;
					tool_to_use = load_entity.tool_to_use;
					region = load_entity.region;
					move_spd = load_entity.move_spd;
					break;
			//-----Obj_items
				case "obj_item":
					item_num = load_entity.item_num;
					x_frame = load_entity.x_frame;
					y_frame = load_entity.y_frame;
					drop_move = false; // Assumed, so not needed in save file
					break;
			//-----Structs
				case "obj_structure_parent":
				//case "obj_structure_pebble_refiner":
					structure_level = load_entity.structure_level;
					in_use = load_entity.in_use;
					menu_up = load_entity.menu_up;
					base_speed = load_entity.base_speed;
					wait_time = load_entity.wait_time;
					current_step = load_entity.current_step;
					output = load_entity.output;
					draw_spr = load_entity.draw_spr;
					draw_menu = load_entity.draw_menu;
					break;
			//-----Player
			case "obj_player":
				spd = load_entity.spd;
				x_frame = load_entity.x_frame;
				y_frame = load_entity.y_frame;
				dir = load_entity.dir;
				health = load_entity._health;
				health_timer = load_entity.health_timer;
				health_timer_threshold = load_entity.health_timer_threshold;
				i_frames = load_entity.i_frames;
				i_frames_remaning = load_entity.i_frames_remaning;
				break;
				//-----Inventory
				case "obj_inventory":
					inv_slots = load_entity.inv_slots;
					pickup_slot = load_entity.pickup_slot;
					selected_slot = load_entity.selected_slot;
					var inv_array = load_entity.inv_array;
					var ii = 0; repeat(inv_slots){
						ds_inventory[# 0, ii] = inv_array[ii][0];
						ds_inventory[# 1, ii] = inv_array[ii][1];
						ii++;
					}
					break;
				//-----Relics
				case "obj_relics_menu":
					global.renown = load_entity.renown;
					pick_power = load_entity.pick_power;
					bonus_inv_slots = load_entity.bonus_inv_slots;
					break;
				default:
					break;
			}
				
		}
	}
	if (global.is_paused) {
		global.is_paused = false;
		with (obj_GameState) {
			show_menu = false;
			drawn_menu = false;
		}
	}
}
show_debug_message("Loaded savegame.sav")
}