if (!building) exit;


var cH = cellHeight;
var cW = cellWidth;
mousex_adjusted = (mousex div cW);
//var mousey_adjusted = (mousey div cH) * cH + cell_offset_y;
mousey_adjusted = (mousey div cH);
if ((mousex_adjusted mod 2) == 0) {
	mousey_adjusted = (mousey div cH) * cH + cell_offset_y + (cH/2);
} else {
	mousey_adjusted = (mousey div cH) * cH + cell_offset_y + cH;	
}
mousex_adjusted = mousex_adjusted * cW + cell_offset_x + (cW/2);



//Draw the Struct to build
draw_sprite(spr_pebble_refiner, 0, mousex_adjusted, mousey_adjusted);
