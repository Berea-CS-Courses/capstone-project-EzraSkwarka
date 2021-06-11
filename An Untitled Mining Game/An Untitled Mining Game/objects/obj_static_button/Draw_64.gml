//Top Cap
	draw_sprite_part_ext(draw_spr, 0, 0, 0, 64, 4, x, y, width, scale, c_white, 1)
//Body
	draw_sprite_part_ext(draw_spr, 0, 0, 5, 64, 24, x, y + (4 * scale), width, height, c_white, 1)
//Base Cap
	draw_sprite_part_ext(draw_spr, 0, 0, 29, 64, 4, x, y + ((4 * scale) + (24 * height)), width, scale, c_white, 1)
