// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_crafting_button(draw_x, draw_y, button_width, button_height, text, make_item, item_x, item_y) 
{
var button = instance_create_layer(draw_x, draw_y, "UI", obj_crafting_button);

with (button) {
	//Where
	width = button_width;
	height = button_height;
	display_text = text;
	//What
	item_type = make_item;
	x_loc = item_x;
	y_loc = item_y;
	
}

return button;
}