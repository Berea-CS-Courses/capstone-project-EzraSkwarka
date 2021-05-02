// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_pebble_reffiner_menu() 
{
var _x = 0;
var _y = 0;

with (obj_MenuBuilder) {
	_x = x_base;
	_y = y_base;
}
var _width = 100;
show_debug_message("making button");
var button = scr_create_crafting_button(screen_width/2 -  _width/2, 100, _width, 100, "Make Shiny");
//Im making too many buttons!!!
with (button) {
	item_type = item.shiny_rock;
	x_loc = _x;
	y_loc = _y;
			
}
}