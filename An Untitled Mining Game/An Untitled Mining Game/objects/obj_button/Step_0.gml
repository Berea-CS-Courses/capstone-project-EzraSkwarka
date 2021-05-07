/// @description 
var _hover = scr_get_hover(width, height, x, y);
var _click = _hover && mouse_check_button_pressed(mb_left);

// Hover
hover = lerp(hover, _hover, 0.1);
y = lerp(y, ystart - _hover * 8, 0.1);

// Click
if (_click && call_script >= 0) {
	script_execute(call_script);
}