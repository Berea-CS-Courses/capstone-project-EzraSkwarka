var _hover = scr_get_hover(width, height);
var click = _hover and mouse_check_button_pressed(mb_left);
var struct_in_use = struct_id.in_use;


hover = lerp(hover, _hover, 0.1);

if (_hover and click and (!struct_in_use)) {
	if(scr_have_mats(input)) {
		show_debug_message(string(struct_in_use))
		struct_id.in_use = true;
		struct_id.wait_time = crafting_time;
		scr_consume_mats(input);
		var struct_level = struct_id.structure_level;

		var i = 0; repeat (array_length(output)/2) {
			repeat (struct_level) {
				scr_create_obj_item(output[@ i], x_loc, y_loc);
			}
			i += 2;
		}
	}
}