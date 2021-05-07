// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_button(_x, _y, _width, _height, _text, _script) 
{
	
	// Create button
	var _button = instance_create_layer(_x, _y, "UI", obj_button);

	// Set values
	with (_button) {
		width = _width;
		height = _height;
		text = _text;
		call_script = _script;
	}

	return _button;


}