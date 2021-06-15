// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_crafting_button(draw_x, draw_y, button_width, button_height, 
									recipe, struct_refrence) 
{
var button = instance_create_layer(draw_x, draw_y, "UI", obj_crafting_button);

with (button) {
	//Where
	width = button_width;
	height = button_height;
	display_text = recipe[4];
	struct_id = struct_refrence
	//What
	recipe_name = recipe[0];
	input = recipe[1];
	output = recipe[2];
	x_loc = struct_refrence.x;
	y_loc = struct_refrence.y;
	crafting_time = recipe[3];
	
	
}

return button;
}