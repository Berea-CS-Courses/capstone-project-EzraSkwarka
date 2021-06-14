draw_sprite(spr_to_draw, 0, x, y);

draw_healthbar(	x + bar_offset_x, y + bar_offset_y, //Start
				x + bar_width + bar_offset_x, y + bar_height + bar_offset_y, //Stop
				(node_health/max_health) * 100, //How much
				c_black, c_red, c_lime,			//Colors
				0, false, true);				