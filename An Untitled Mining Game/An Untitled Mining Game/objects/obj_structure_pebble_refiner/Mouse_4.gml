if (distance_to_object(obj_player) <= 16) {
	var is_close_enough = true;
} else {
	is_close_enough = false;
}

if(is_close_enough == true)
{
	with(obj_inventory) {
		var ds_inv = ds_inventory
		var pebble_found = false;
		var ii = 0; repeat(inv_slots){ // look through inventory for pebble
			if (ds_inv[# 0, ii] == 1) {
				if (ds_inv[# 1, ii] >=3) {
					ds_inv[# 1, ii] -= 3;
					pebble_found = true;
					break;
				}
			} else {
				ii += 1;
			}
		}
	}
	if (pebble_found) {
		shiny_multiplier = floor(1+.1*structure_level);
	
		repeat(shiny_multiplier)
		{
			var inst = instance_create_layer(x, y, "Active", obj_item);
						with (inst) {
							item_num = 2;
							x_frame = item_num mod (spr_width/cell_size);
							y_frame = item_num div (spr_width/cell_size);
						}
		}
	}
	/*if(global.num_pebbles >= 3)
	{
		global.num_pebbles += -3;
	
		shiny_multiplier = floor(1+.1*structure_level);
	
		repeat(shiny_multiplier)
		{
			instance_create_layer(x + 0, y + 0, "Active", obj_mat_shiny_rock);
		}
	}*/
}