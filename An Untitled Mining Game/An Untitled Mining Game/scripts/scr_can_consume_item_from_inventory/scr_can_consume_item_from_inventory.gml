// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_can_consume_item_from_inventory (item_number, item_amount) {
with(obj_inventory) {
		var ds_inv = ds_inventory
		var item_found = false;
		var ii = 0; repeat(inv_slots){ // look through inventory for pebble
			if (ds_inv[# 0, ii] == item_number) {
				if (ds_inv[# 1, ii] >= item_amount) {
					item_found = true;
					break;
				}
			} else {
				ii += 1;
			}
		}
		
}
return item_found;
}