var _hover = scr_get_hover(width, height);
var click = _hover and mouse_check_button_pressed(mb_left);

hover = lerp(hover, _hover, 0.1);

if (_hover and click) {
	show_debug_message("making one")
	if(scr_have_mats(input)) {
		scr_consume_mats(input);
		var i = 0; repeat (array_length(output)/2) {
			scr_create_obj_item(output[@ i], x_loc, y_loc);
			i += 2;
		}
	}
}