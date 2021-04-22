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
				x:x,
				y:y,
				layer : layer,
			}
			
			//-----Nodes
			if (variable_instance_exists(save_entity, "bonus_multiplier")) {save_entity.bonus_multiplier = bonus_multiplier};
			if (variable_instance_exists(save_entity, "node_health")) {save_entity.node_health = node_health};
			if (variable_instance_exists(save_entity, "spr_to_draw")) {save_entity.spr_to_draw = spr_to_draw};
			
			//-----Structs
			if (variable_instance_exists(save_entity, "structure_level")) {save_entity.structure_level = structure_level};
			if (variable_instance_exists(save_entity, "in_use")) {save_entity.in_use = in_use};
			if (variable_instance_exists(save_entity, "needed_shiny_rocks")) {save_entity.needed_shiny_rocks = needed_shiny_rocks};
			if (variable_instance_exists(save_entity, "shiny_multiplier")) {save_entity.shiny_multiplier = shiny_multiplier};
				
		array_push(save_data, save_entity);
	}
	i++;
}

//-----Structs
/*var node_type_array = [obj_structure_mouse_tool, obj_structure_pebble_refiner];
var i = 0; repeat(array_length(node_type_array)) {
	with (node_type_array[i])
	{
			var save_entity = 
			{
				obj : object_get_name(object_index),
				x:x,
				y:y,
				layer : layer,
				structure_level : structure_level,
				in_use : in_use,
				needed_shiny_rocks : needed_shiny_rocks
			}
		array_push(save_data, save_entity);
	}
	i++;
}
*/
// spit it out!!!
var out_string = json_stringify(save_data);
var _buffer = buffer_create(string_byte_length(out_string) + 1, buffer_fixed, 1);
buffer_write(_buffer, buffer_string, out_string);
buffer_save(_buffer, "savegame.sav");
buffer_delete(_buffer);

show_debug_message("Game saved! " + out_string);