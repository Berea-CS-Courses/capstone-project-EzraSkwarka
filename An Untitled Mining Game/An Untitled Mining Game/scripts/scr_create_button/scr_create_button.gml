// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_button(_x, _y, button_width, button_height, text, run_script) 
{
var button = instance_create_layer(_x, _y, "UI", obj_button);

with (button) {
	width = button_width;
	height = button_height;
	display_text = text;
	call_script = run_script;
}


}