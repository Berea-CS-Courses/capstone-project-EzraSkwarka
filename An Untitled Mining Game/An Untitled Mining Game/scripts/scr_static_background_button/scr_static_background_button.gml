// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_static_background_button(spr_base, _x, _y, _width, _height) 
{
var _button = instance_create_depth(0,0,1,obj_static_button)
			with (_button) {
				draw_spr = spr_blue_button_base;
				width = _width;
				height = _height;
				x = _x;
				y = _y;
			}
			
return _button;
}