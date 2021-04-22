// Load Game

// for every parant instance, build a map to append to the list
var node_type_array = [obj_node_rock, obj_node_tree];
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
			bonus_multiplier = load_entity.bonus_multiplier;
			node_health = load_entity.node_health;
			spr_to_draw = load_entity.spr_to_draw;
		}
	}
}
