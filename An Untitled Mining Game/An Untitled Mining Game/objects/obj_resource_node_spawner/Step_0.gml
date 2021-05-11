var is_free = place_free(x + 0, y + 0);
if (is_free) {
	if(alarm_step >= spawn_delay) {
		if ((global.NodesSpawned < global.NodeSpawnLimit)) {
			scr_create_region_node(region);
			global.NodesSpawned += 1;
		}
		alarm_step = 0;
		spawn_delay = irandom_range(75, 105);
	} else {
		alarm_step += 1;	
	}
}

