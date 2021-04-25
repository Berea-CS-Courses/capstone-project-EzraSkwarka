if (!building) exit;






//Draw the Struct to build
if (hex_empty == true) {
	/*draw_set_alpha(.2);
	image_blend(c_green);
	draw_sprite(active_sprite, 0, mousex_adjusted, mousey_adjusted);
	draw_set_alpha(1);
	image_blend(c_white);*/
	draw_sprite_ext(active_sprite, 0, mousex_adjusted, mousey_adjusted, 1, 1, 0, c_green, .5);
} else {
	draw_sprite_ext(active_sprite, 0, mousex_adjusted, mousey_adjusted, 1, 1, 0, c_red, .5);
}