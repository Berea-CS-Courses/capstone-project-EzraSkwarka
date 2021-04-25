selected_tool = 0;
tool_tier = 0;
scale = 1;

cell_size = 16;

spr_sheet = spr_tool_sheet;

spr_tool_columns = sprite_get_width(spr_sheet)/cell_size;
spr_tool_rows = sprite_get_height(spr_sheet)/cell_size;

enum tools { 
	//represents the row a given tool is on in the spr sheet
	none,
	pickaxe,
	axe,
	
	height
	
}














