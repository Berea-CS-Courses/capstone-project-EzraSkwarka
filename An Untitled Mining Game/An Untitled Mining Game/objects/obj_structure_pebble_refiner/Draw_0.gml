draw_sprite(spr_pebble_refiner, 0, x + 0, y + 0);

draw_set_font(fnt_smalldigits);
draw_set_colour($FFFFFFFF & $ffffff);
var l1AF7C74B_0=($FFFFFFFF >> 24);
draw_set_alpha(l1AF7C74B_0 / $ff);

draw_text(x + 8, y + 8,  + string(structure_level));

//Timed delay and thermo
if in_use and (current_step < wait_time) {
	current_step++;
	draw_pie(x ,y , current_step, wait_time, c_red, 20, 1)
	if (current_step >= wait_time) {
		in_use = false;
		current_step = 0;
	}
}