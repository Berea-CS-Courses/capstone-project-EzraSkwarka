// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_obj_item(item_number, x_loc, y_loc) 
{
var inst = instance_create_layer(x_loc, y_loc, "Active", obj_item);
	with (inst) {
		item_num = item_number;
		x_frame = item_num mod (spr_width/cell_size);
		y_frame = item_num div (spr_width/cell_size);
	}
}