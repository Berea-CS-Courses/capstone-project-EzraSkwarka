var _hover = scr_get_hover(width, height, x, y);
var click = _hover and mouse_check_button_pressed(mb_left);


hover = lerp(hover, _hover, 0.1);

//if (_hover and click and (!struct_in_use)) {
if (_hover and click) {
	obj_MenuBuilder.recipe_name = display_text;
	obj_MenuBuilder.input = input;
	obj_MenuBuilder.output = output;
	show_debug_message(obj_MenuBuilder.output)
	obj_MenuBuilder.crafting_time = crafting_time;
	obj_MenuBuilder.draw_craft = true;
	
}