// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_crafting_button(_x, _y, button_width, button_height, text) 
{
var button = instance_create_layer(_x, _y, "UI", obj_crafting_button);

with (button) {
	width = button_width;
	height = button_height;
	display_text = text;
	//call_script = run_script;
}

return button;
}