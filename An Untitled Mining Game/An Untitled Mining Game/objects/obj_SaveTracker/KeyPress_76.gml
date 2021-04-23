// Load Game

// for every parant instance, build a map to append to the list
var i = 0; repeat(array_length(node_type_array)) {
	with (node_type_array[i])
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
			show_debug_message("Created a " + load_entity.obj);
			switch (load_entity.obj) {
			//-----Nodes
				case "obj_node_rock": 
				case "obj_node_tree": 
					bonus_multiplier = load_entity.bonus_multiplier;
					node_health = load_entity.node_health;
					spr_to_draw = load_entity.spr_to_draw;
					break;
			//-----Structs
				case "obj_structure_mouse_tool":
				case "obj_structure_pebble_refiner":
					structure_level = structure_level;
					in_use = in_use;
					structure_level = structure_level;
					break;
			//-----Player
				//-----Inventory
				case "obj_inventory":
					inv_slots = load_entity.inv_slots;
					var inv_array = load_entity.inv_array;
					var ii = 0; repeat(inv_slots){
						ds_inventory[# 0, ii] = inv_array[ii][0];
						ds_inventory[# 1, ii] = inv_array[ii][1];
						ii++;
					}
					break;
				default:
					break;
			}
				
		}
	}
}
