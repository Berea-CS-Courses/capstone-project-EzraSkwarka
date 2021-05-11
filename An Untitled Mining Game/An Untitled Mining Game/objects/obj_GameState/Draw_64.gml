if(global.is_paused)
{
	draw_set_color(c_black);
	draw_set_alpha(.6)
	draw_rectangle(view_xport[0],view_yport[0], view_wport[0], view_hport[0], 0);
	draw_set_alpha(1)
	draw_set_color(c_white);
	draw_set_font(fnt_basic_large);
	
	if show_menu {
		if !drawn_menu {
			var _height = 100;
			var _width = 300;
			save_button = scr_create_button(screen_width/2 - _width/2, screen_height/3, _width, _height,
								"Save Game", scr_save_game)		
			load_button = scr_create_button(screen_width/2 - _width/2, screen_height/3 + 150, _width, _height,
								"Load Game", scr_load_game)
			exit_button = scr_create_button(screen_width/2 - _width/2, screen_height/3 + 300, _width, _height,
								"Exit Game", game_end)
			drawn_menu = true;
		}
	}
}