// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_mouse_level() 
{
	var mouse_level = 0;
	with (obj_structure_parent) {
		if (draw_menu != menu_type.mouse_tool) {
			continue	
		}
		mouse_level += structure_level;
	}
	
	return mouse_level;
}