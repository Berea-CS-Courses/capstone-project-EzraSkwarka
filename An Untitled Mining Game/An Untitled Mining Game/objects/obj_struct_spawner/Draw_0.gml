if (!building or global.is_paused) exit;






//Draw the Struct to build
if (hex_empty == true and scr_have_mats(required_mats)) {
	draw_sprite_ext(active_sprite, 0, mousex_adjusted, mousey_adjusted, 1, 1, 0, c_green, .5);
} else {
	draw_sprite_ext(active_sprite, 0, mousex_adjusted, mousey_adjusted, 1, 1, 0, c_red, .5);
}