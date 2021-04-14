if (drop_move) {
	x = lerp(x, x_goal, .1);	
	y = lerp(y, y_goal, .1);
	if ((abs(x - x_goal) < 1) and (abs(y - y_goal) < 1)) {
		drop_move = false;
	}
} else {
	var px = obj_player.x;
	var py = obj_player.y;
	var r = 32;
	
	if (point_in_rectangle(px, py, x - r, y - r, x + r, y + r)) { // if player within dection radius
		//Am I at the player?
		r = 2
		if !(point_in_rectangle(px, py, x - r, y - r, x + r, y + r)) {
			//no, move to player
			x = lerp(x, px, .1);	
			y = lerp(y, py, .1);
		} else {
			//yes, pickup and destroy
			var in = item_num;
			
			with(obj_inventory) {
				var ds_inv = ds_inventory
				var picked_up = false;
				//check if item exists already
				var ii = 0; repeat(inv_slots){
					if (ds_inv[# 0, ii] == in) {
						ds_inv[# 1, ii] += 1;
						picked_up = true;
						break;
					} else {
						ii += 1;
					}
				}
				
				//can I add it to an mempty slot
				if (!picked_up) {
					ii = 0; repeat(inv_slots){
						if (ds_inv[# 0, ii] == item.none) {
							ds_inv[# 0, ii] = in;
							ds_inv[# 1, ii] += 1;
							picked_up = true;
							break;
						} else {
							ii += 1;
						}
					}
				}
				
				//inventory full
			}
			//destroy item
			if(picked_up) {
				instance_destroy();
			}
		}
		
		
		
	}
	
	
}