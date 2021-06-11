//This function draws a static non interactable background button based off of the given sprite. 
//_x and _y represent in the top left of most corner of the background button, and width and height 
// are the desired total dimensions of the button. 

// Give width and height as a desired pixel value, and the function and object will take care of the math


// Returns button reference ID
function scr_static_background_button(_spr_base, _x, _y, _width, _height) 
{
var _button = instance_create_depth(0,0,1,obj_static_button)
			with (_button) {
				draw_spr = _spr_base;
				width = _width / 64;
				height = _height / 32;
				x = _x;
				y = _y;
			}
			
return _button;
}