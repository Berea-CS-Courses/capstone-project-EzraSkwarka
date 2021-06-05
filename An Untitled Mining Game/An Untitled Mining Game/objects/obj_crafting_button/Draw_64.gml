//Set hover color
//draw_set_color(merge_color(c_ltgray, c_white, hover));

//Draw bounding box
	//draw_roundrect(x, y, x + width, y + height, 0);
	if (hover >= .5) {
		draw_sprite_ext(spr_blue_button_base, 1, x, y, width/64, height/32, 0, c_white, 1);
	} else {
		draw_sprite_ext(spr_blue_button_base, 0, x, y, width/64, height/32, 0, c_white, 1);
	}
//Draw text
	//Format
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	//Write
	draw_text(x + width/2, y + height/2, display_text);

	//Reset format
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_black);

