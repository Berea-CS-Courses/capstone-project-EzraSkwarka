if(!show_relics_menu) exit;

draw_sprite_part_ext(
	spr_equipment_UI, 0, cell_size, 0, equipment_UI_width, equipment_UI_height, 
	equipment_UI_x, equipment_UI_y, scale, scale, c_white, 1
);

draw_sprite_part_ext(
	spr_tools_UI, 0, cell_size, 0, tools_UI_width, tools_UI_height, 
	tools_UI_x, tools_UI_y, scale, scale, c_white, 1
);

draw_sprite_part_ext(
	spr_relics_UI, 0, cell_size, 0, relics_UI_width, relics_UI_height, 
	relics_UI_x, relics_UI_y, scale, scale, c_white, 1
);