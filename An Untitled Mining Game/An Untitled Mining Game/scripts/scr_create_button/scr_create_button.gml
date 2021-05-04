// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_button(draw_x, draw_y, button_width, button_height, 
									text, _script) 
{
var button = instance_create_layer(draw_x, draw_y, "UI", obj_button);

with (button) {
	//Where
	width = button_width;
	height = button_height;
	display_text = text;
	run_script = _script;
	
}

return button;
}