draw_sprite(spr_pebble_refiner, 0, x + 0, y + 0);

draw_set_font(fnt_smalldigits);
draw_set_colour($FFFFFFFF & $ffffff);
var l1AF7C74B_0=($FFFFFFFF >> 24);
draw_set_alpha(l1AF7C74B_0 / $ff);

draw_text(x + 8, y + 8,  + string(structure_level));

//Timed delay and thermo
if in_use and (current_step < wait_time) {
	current_step++;
	draw_pie(x ,y , current_step, wait_time,[c_red, c_lime], 15, .5)
	if (current_step >= wait_time) {
		in_use = false;
		current_step = 0;
		var i = 0; repeat (array_length(output)/2) {
				var repeat_count = max(((6 * structure_level)) div base_speed, 1);
				repeat (repeat_count) {
					repeat (output[@ i + 1]) {
						scr_create_obj_item(output[@ i], x, y);
					}
				}
				i += 2;
		}
	}
}
