// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_consume_item_from_inventory (item_number, item_amount) {
//Renown check
if (item_number == item.renown_ref) {
	global.renown -= item_amount;
	return true;
}
with(obj_inventory) {
		var ds_inv = ds_inventory
		var item_found = false;
		var amount_found = 0;
		var ii = 0; repeat(inv_slots){ // look through inventory for item
			if (ds_inv[# 0, ii] == item_number) { //we found some
				//this stack doesn't have enough
				if (ds_inv[# 1, ii] <= (item_amount - amount_found)) {
					//add to amount
					amount_found += ds_inv[# 1, ii];
					//empty slot
					ds_inv[# 0, ii] = item.none; // item = none
					ds_inv[# 1, ii] = 0; // amount = none
				}
				//This stack has enough
				else {
					ds_inv[# 1, ii] -= (item_amount - amount_found);
					amount_found = item_amount;
					//empty slot if used all item
					if (ds_inv[# 1, ii] <= 0) {
						ds_inv[# 0, ii] = item.none; // item = none
						ds_inv[# 1, ii] = 0; // amount = none
					}
				}
			}
			ii += 1;
			if (amount_found >= item_amount) {
				return item_found = true;	
			}
		}
	}
		
return item_found;
}