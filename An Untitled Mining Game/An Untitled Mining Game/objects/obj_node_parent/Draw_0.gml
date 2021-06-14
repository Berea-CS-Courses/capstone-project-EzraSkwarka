draw_sprite(spr_to_draw, 0, x, y);



if (node_health != max_health) {
	if (time_since_damaged >= timer_cooldown) {
		draw_set_alpha(.25);	
	} else {
		draw_set_alpha(.5)
	}
	draw_healthbar(	x + bar_offset_x, y + bar_offset_y, //Start
					x + bar_width + bar_offset_x, y + bar_height + bar_offset_y, //Stop
					(node_health/max_health) * 100, //How much
					c_black, c_red, c_lime,			//Colors
					0, true, true);
	draw_set_alpha(1)
}

time_since_damaged += 1