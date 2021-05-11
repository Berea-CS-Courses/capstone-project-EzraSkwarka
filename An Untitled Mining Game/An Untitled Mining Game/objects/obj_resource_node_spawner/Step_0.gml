var is_free = place_free(x + 0, y + 0);
if (is_free) {
	if(alarm_step >= spawn_delay) {
		if ((global.NodesSpawned < global.NodeSpawnLimit)) {
		var random_number = floor(random_range(0, 100 + 1));
			if((random_number >= 75)) {
				instance_create_layer(x + 0, y + 0, "Active", obj_node_tree);
			} else {
				instance_create_layer(x + 0, y + 0, "Active", obj_node_rock);
			}
			global.NodesSpawned += 1;
		}
		alarm_step = 0;
		spawn_delay = irandom_range(75, 105);
	} else {
		alarm_step += 1;	
	}
}

