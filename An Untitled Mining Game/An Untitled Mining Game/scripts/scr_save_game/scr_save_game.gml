// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_save_game() 
{
// Save Game
var node_type_array = obj_SaveTracker.nta;
// make save array
var save_data = array_create(0);

// for every parant instance, build a map to append to the list


var i = 0; repeat(array_length(node_type_array)) {
	with (node_type_array[i])
	{
			var save_entity = 
			{
				obj : object_get_name(object_index),
				x: floor(x),
				y: floor(y),
				layer : layer,
			}
			

			switch (save_entity.obj) {
			//-----Nodes
				case "obj_NodeController":
					save_entity.node_spawn_limit = node_spawn_limit;
					save_entity.nodes_spawned = nodes_spawned;
					save_entity.node_region_spawns = node_region_spawns;
					save_entity.node_region_spawn_limit = node_region_spawn_limit;
					break;					
				case "obj_node_parent": 
					save_entity._health = _health;
					save_entity.max_health = max_health;
					save_entity.spr_to_draw = spr_to_draw;
					save_entity.mask_index= mask_index;
					save_entity.drop_array = drop_array;
					save_entity.tool_to_use = tool_to_use;
					save_entity.region = region;
					break;
				case "obj_mob_parent":
					save_entity.timer = timer;
					save_entity.mob_type = mob_type;
					save_entity.follow_radius = follow_radius;
					save_entity.attack_radius = attack_radius;
					save_entity._health = _health;
					save_entity.max_health = max_health;
					save_entity.attack_power = attack_power;
					save_entity.mask_index= mask_index;
					save_entity.drop_array = drop_array;
					save_entity.tool_to_use = tool_to_use;
					save_entity.region = region;
					save_entity.move_spd = move_spd;
					break;
			//-----Obj_items
				case "obj_item":
					save_entity.item_num = item_num;
					save_entity.x_frame = x_frame;
					save_entity.y_frame = y_frame;
					break;
			//-----Structs
				case "obj_structure_parent":
				//case "obj_structure_pebble_refiner":
					save_entity.structure_level = structure_level;
					save_entity.in_use = in_use;
					save_entity.menu_up = menu_up;
					save_entity.base_speed = base_speed;
					save_entity.wait_time = wait_time;
					save_entity.current_step = current_step;
					save_entity.output = output;
					save_entity.draw_spr = draw_spr;
					save_entity.draw_menu = draw_menu;
					
					break;
			//-----Player
				case "obj_player":
					save_entity.spd = spd;
					save_entity.x_frame = x_frame;
					save_entity.y_frame = y_frame;
					save_entity.dir = dir;
					save_entity._health = health;
					save_entity.health_timer = health_timer;
					save_entity.health_timer_threshold = health_timer_threshold;
					save_entity.i_frames = i_frames;
					save_entity.i_frames_remaning = i_frames_remaning;
					break;
				//-----Inventory
				case "obj_inventory":
					save_entity.layer = "UI";
					save_entity.inv_slots = inv_slots;
					save_entity.pickup_slot = pickup_slot;
					save_entity.selected_slot = selected_slot;
					var inv_array = [];
					var ii = 0; repeat(inv_slots){
						array_push(inv_array, [ds_inventory[# 0, ii], ds_inventory[# 1, ii]])
						ii++;
					}
					save_entity.inv_array = inv_array;
					break;
				//-----Relics
				case "obj_relics_menu":
					save_entity.layer = "UI";
					save_entity.renown = global.renown;
					save_entity.pick_power = pick_power;
					save_entity.bonus_inv_slots = bonus_inv_slots;
					break;
				default:
					break;
			}
		array_push(save_data, save_entity);
	}
	i++;
}

// spit it out!!!
var out_string = json_stringify(save_data);
var _buffer = buffer_create(string_byte_length(out_string) + 1, buffer_fixed, 1);
buffer_write(_buffer, buffer_string, out_string);
buffer_save(_buffer, "savegame.sav");
buffer_delete(_buffer);

show_debug_message("Game saved!");
}