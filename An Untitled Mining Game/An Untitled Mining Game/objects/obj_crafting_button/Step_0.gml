var _hover = scr_get_hover(width, height);
var click = _hover and mouse_check_button_pressed(mb_left);
var struct_in_use = struct_id.in_use;


hover = lerp(hover, _hover, 0.1);

if (_hover and click and (!struct_in_use)) {
	if(scr_have_mats(input)) {
		var struct_level = struct_id.structure_level;
		struct_id.in_use = true;
		struct_id.wait_time = max(crafting_time - (6 * struct_level), 6);
		scr_consume_mats(input);
		
		if struct_id.current_step == (struct_id.wait_time - 1) {
			var i = 0; repeat (array_length(output)/2) {
				var repeat_count = max(((6 * struct_level)) div crafting_time, 1);
				show_debug_message(string(repeat_count))
				repeat (repeat_count) {
					repeat (output[@ i + 1]) {
						scr_create_obj_item(output[@ i], x_loc, y_loc);
					}
				}
				i += 2;
			}
		}
	}
}