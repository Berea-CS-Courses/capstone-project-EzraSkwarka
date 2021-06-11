/// @description 
var _hover = scr_get_hover(width, height, x, y);
var _click = _hover && mouse_check_button_pressed(mb_left);

// Hover
hover = lerp(hover, _hover, 0.1);

// Click
if (_click and left) {
	obj_MenuBuilder.item_amount = max(1, obj_MenuBuilder.item_amount - 1);
} else if (_click) {
	obj_MenuBuilder.item_amount += 1;
}