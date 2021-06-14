draw_sprite(draw_spr, 0, x, y);
mask_index = draw_spr;

draw_set_font(fnt_smalldigits);
draw_set_colour($FFFFFFFF & $ffffff);
var l1AF7C74B_0=($FFFFFFFF >> 24);
draw_set_alpha(l1AF7C74B_0 / $ff);

draw_text(x + 8, y + 8,  + string(structure_level));

//Timed delay and thermo
scr_show_and_craft(id);
