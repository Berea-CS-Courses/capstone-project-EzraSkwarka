if (global.is_paused) exit;

with (obj_player) {
	var handsx = x + 11;
	var handsy = y - 1;
}

draw_sprite_ext(draw_spr, 0, handsx, handsy, scale, scale, target_angle, c_white, 1);