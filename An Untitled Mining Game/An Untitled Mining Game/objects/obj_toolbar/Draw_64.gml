//draw_sprite(spr_toolbar, equiped_tool, 128 * 4, 212 * 4);
var i = 0; repeat (2) {
	//find x-offset
	var xi = 512 + ((cell_size + 2)* scale * i);
	// draw boxes
	draw_sprite_part_ext(spr_tools_UI, 0, 0, 0, cell_size, cell_size, 
	xi, 848, 
	scale, scale, c_white, 1);
	//draw tools
	draw_sprite_part_ext(spr_tool_sheet, 0, 0, cell_size_sheet * (i + 1), cell_size_sheet, cell_size_sheet, 
	xi, 848, 
	scale * 2, scale * 2, c_white, 1);
	i++;
}
	//draw the indicator
	xi = 512 + ((cell_size + 2)* scale * (equiped_tool - 1));
	gpu_set_blendmode(bm_add);
	draw_sprite_part_ext(spr_tool_sheet, 0, 0, cell_size_sheet * equiped_tool, cell_size_sheet, cell_size_sheet, 
	xi, 848, 
	scale * 2, scale * 2, c_white, 1);
	gpu_set_blendmode(bm_normal);