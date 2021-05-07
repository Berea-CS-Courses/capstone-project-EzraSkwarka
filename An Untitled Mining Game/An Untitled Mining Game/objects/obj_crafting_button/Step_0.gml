var _hover = scr_get_hover(width, height);
var click = _hover and mouse_check_button_pressed(mb_left);
var struct_in_use = struct_id.in_use;


hover = lerp(hover, _hover, 0.1);

if (_hover and click and (!struct_in_use)) {
	if(scr_have_mats(input)) {
		//Mark in use
		struct_id.in_use = true;
		
		//Set speed
		struct_id.base_speed = crafting_time;
		var struct_level = struct_id.structure_level;
		struct_id.wait_time = max(crafting_time - (6 * struct_level), 6);
		
		//Consume input and pass output
		scr_consume_mats(input);
		struct_id.output = output;
	}
}