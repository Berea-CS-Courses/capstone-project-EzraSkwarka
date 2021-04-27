var is_empty = place_empty(x + 0, y + 0);
if (is_empty) {
	if(alarm_step >= spawn_delay) {
		var random_number = floor(random_range(0, 100 + 1));
		if((random_number >= 75)) {
			instance_create_layer(x + 0, y + 0, "Active", obj_node_tree);
		} else {
			instance_create_layer(x + 0, y + 0, "Active", obj_node_rock);
		}
		alarm_step = 0;
	} else {
		alarm_step += 1;	
	}
}

