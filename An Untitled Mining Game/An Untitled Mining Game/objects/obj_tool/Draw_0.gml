with (obj_player) {
	var handsx = x + 11;
	var handsy = y - 1;
}

/*aw_sprite_part_ext(
	spr_sheet, 0, cell_size * tool_tier, cell_size * selected_tool,
	cell_size, cell_size, handsx, handsy, scale, scale, c_white, 1);
	
image_angle = 180;*/

draw_sprite_ext(draw_spr, 0, handsx, handsy, scale, scale, target_angle, c_white, 1);