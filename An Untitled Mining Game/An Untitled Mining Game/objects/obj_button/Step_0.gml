var _hover = scr_get_hover(width, height);
var click = _hover and mouse_check_button_pressed(mb_left);

hover = lerp(hover, _hover, 0.1);

if (click and (run_script != -1)) {
	script_execute(run_script);
}