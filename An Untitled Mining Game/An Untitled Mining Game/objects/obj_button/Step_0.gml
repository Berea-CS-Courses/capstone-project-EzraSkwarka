var _hover = scr_get_hover(width, height);
var click = _hover and mouse_check_button(mb_left);

hover = lerp(hover, _hover, 0.1);

if (click and call_script >= 0) {
	script_execute(call_script);	
}