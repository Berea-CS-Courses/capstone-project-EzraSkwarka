draw_sprite(spr_pebble_refiner, 0, x + 0, y + 0);

draw_set_font(fnt_smalldigits);
draw_set_colour($FFFFFFFF & $ffffff);
var l1AF7C74B_0=($FFFFFFFF >> 24);
draw_set_alpha(l1AF7C74B_0 / $ff);

draw_text(x + 8, y + 8,  + string(structure_level));