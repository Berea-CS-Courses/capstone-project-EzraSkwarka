//Stay on screen`
clamp(x, 0, global.ScreenWidth);
clamp(y, 0, global.ScreenHeight);


if (drop_move) { //inital Spawn
	x = lerp(x, x_goal, .1);	
	y = lerp(y, y_goal, .1);
	if ((abs(x - x_goal) < 1) and (abs(y - y_goal) < 1)) {
		drop_move = false;
	}
} else {
	// Is inventory full
	var in = item_num;
	with(obj_inventory) {
			var ds_inv = ds_inventory
			var inventory_full = true;
			//check if item exists already
			var ii = 0; repeat(inv_slots){
				if ((ds_inv[# 0, ii] == 0) or (ds_inv[# 0, ii] == in)) { //if there is an empty slot or a slot of the same item
					inventory_full = false;
					break;
				} else {
					ii += 1;
				}
			}
	}
	if (inventory_full) exit;
	
	var px = obj_player.x;
	var py = obj_player.y;
	var r = dectition_radius;
	var ia = item_amount;
	
	if (point_in_rectangle(px, py, x - r, y - r, x + r, y + r)) { // if player within dection radius
		//Am I at the player?
		r = pickup_radius;
		if !(point_in_rectangle(px, py, x - r, y - r, x + r, y + r)) {
			//no, move to player
			x = lerp(x, px, lerp_speed);	
			y = lerp(y, py, lerp_speed);
		} else {
			
			//yes, pickup and destroy
			with(obj_inventory) {
				var ds_inv = ds_inventory
				var picked_up = false;
				//check if item exists already
				var ii = 0; repeat(inv_slots){
					if (ds_inv[# 0, ii] == in) {
						ds_inv[# 1, ii] += ia;
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
				

			}
			//destroy item
			if(picked_up) {
				instance_destroy();
			}
		}
		
		
		
	}
	
	
}