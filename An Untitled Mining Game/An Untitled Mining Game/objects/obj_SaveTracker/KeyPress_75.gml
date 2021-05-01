// Save Game

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
				case "obj_node_rock": 
				case "obj_node_tree": 
					save_entity.bonus_multiplier = bonus_multiplier;
					save_entity.node_health = node_health;
					save_entity.spr_to_draw = spr_to_draw;
					break;
			//-----Obj_items
				case "obj_item":
					save_entity.item_num = item_num;
					save_entity.x_frame = x_frame;
					save_entity.y_frame = y_frame;
					break;
			//-----Structs
				case "obj_structure_mouse_tool":
				case "obj_structure_pebble_refiner":
					save_entity.structure_level = structure_level;
					save_entity.in_use = in_use;
					save_entity.structure_level = structure_level;
					break;
			//-----Player
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

show_debug_message("Game saved! " + out_string);