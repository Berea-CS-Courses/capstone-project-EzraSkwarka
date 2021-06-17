if global.is_paused exit;

draw_sprite(sprite_index, image_index, x, y);
mask_index = sprite_index;

if (_health != max_health) {
	if (time_since_damaged >= timer_cooldown) {
		draw_set_alpha(.25);	
	} else {
		draw_set_alpha(.5)
	}
	draw_healthbar(	x + bar_offset_x, y + bar_offset_y, //Start
					x + bar_width + bar_offset_x, y + bar_height + bar_offset_y, //Stop
					(_health/max_health) * 100, //How much
					c_black, c_red, c_lime,			//Colors
					0, true, true);
	draw_set_alpha(1)
}

time_since_damaged += 1