// Save Game

// make save array
var save_data = array_create(0);

// for every parant instance, build a map to append to the list
var node_type_array = [obj_node_rock, obj_node_tree];
var i = 0; repeat(array_length(node_type_array)) {
	with (node_type_array[i])
	{
			var save_entity = 
			{
				obj : object_get_name(object_index),
				x:x,
				y:y,
				layer : layer,
				bonus_multiplier : bonus_multiplier,
				node_health : node_health,
				spr_to_draw : spr_to_draw
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