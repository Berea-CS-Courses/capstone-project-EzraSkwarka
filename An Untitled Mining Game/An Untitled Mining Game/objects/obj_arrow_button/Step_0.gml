/// @description 
var _hover = scr_get_hover(width, height, x, y);
var _click = _hover && mouse_check_button_pressed(mb_left);

// Hover
hover = lerp(hover, _hover, 0.1);

// Click
if (_click and left) {
	obj_MenuBuilder.item_amount = max(1, obj_MenuBuilder.item_amount - 1);
} else if (_click) {
	//Make Container
	var _display_input = [];
	//Fill Cont
	array_copy(_display_input, 0, obj_MenuBuilder.input, 0, array_length(obj_MenuBuilder.input));
	//Scale to amount
	var i = 0; repeat (array_length(obj_MenuBuilder.input)/2) {
		_display_input[@ i + 1] = (obj_MenuBuilder.input[i + 1] * (obj_MenuBuilder.item_amount + 1))
		i += 2;
	}
	i = 0;
	if (scr_have_mats(_display_input)) { //if can craft item amount + 1
		obj_MenuBuilder.item_amount += 1;
	}
}