equiped_tool = 1;
toolbar_size = 2;
scale = 2;

cell_size_sheet = 16;
cell_size = 32;


instance_create_layer(0,0,layer,obj_tool);

enum tools { 
	//represents the row a given tool is on in the spr sheet
	none,
	pickaxe,
	axe,
	
	height
}
