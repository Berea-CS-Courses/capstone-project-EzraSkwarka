if(global.is_paused)
{
	draw_set_color(c_black);
	draw_set_alpha(.6)
	draw_rectangle(view_xport[0],view_yport[0], view_wport[0], view_hport[0], 0);
	draw_set_alpha(1)
	draw_set_color(c_white);
	
	if	   (!obj_relics_menu.show_relics_menu 
		and !obj_inventory.show_inventory 
		and !obj_structures_menu.show_structures_menu) {
			var _width = 250;
			var _height = 100;
			var _h_space = 50;
			if !esc_menu_up {
				draw_set_font(fnt_basic_large);
				scr_create_button((screen_width - _width)/2, screen_height/3 + (_height + _h_space) * 0,
									_width, _height, "Save Game", scr_save_game)
				scr_create_button((screen_width - _width)/2, screen_height/3 + (_height + _h_space) * 1,
									_width, _height, "Load Game", scr_load_game)
				scr_create_button((screen_width - _width)/2, screen_height/3 + (_height + _h_space) * 2,
									_width, _height, "Exit Game", game_end)
				esc_menu_up = true;
			}
		}
}
