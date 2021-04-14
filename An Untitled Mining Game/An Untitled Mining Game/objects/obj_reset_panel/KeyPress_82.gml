if(place_meeting(x, y, obj_player)) {
//Find total number of items
var total_count = 0;
with (obj_inventory) {
	var ds_inv = ds_inventory
	var ii = 0; repeat(inv_slots){ // look through inventory for pebble
			total_count += ds_inv[# 1, ii]
			ds_inv[# 0, ii] = 0; // item = none
			ds_inv[# 1, ii] = 0; // amount = none
			ii += 1;
			}
}

global.renown += max(floor(log2(total_count)),0);

global.mouse_level = 0;

room_restart();
}