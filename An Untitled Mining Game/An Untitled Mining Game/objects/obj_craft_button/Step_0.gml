/// @description 
var _hover = scr_get_hover(width, height, x, y);
var _click = _hover && mouse_check_button_pressed(mb_left);

// Hover
hover = lerp(hover, _hover, 0.1);

// Click
if (_click) {
	script_execute(scr_call_crafting);
}