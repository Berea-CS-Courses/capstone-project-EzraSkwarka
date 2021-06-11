/// @description 
// Set color
if (left) {
	if (hover >= .5) {
		draw_sprite(spr_arrow_left, 0, x, y,);	
	} else {
		draw_sprite(spr_arrow_left, 1, x, y);
	}
} else {
	if (hover >= .5) {
		draw_sprite(spr_arrow_right, 0, x, y,);	
	} else {
		draw_sprite(spr_arrow_right, 1, x, y);
	}
}