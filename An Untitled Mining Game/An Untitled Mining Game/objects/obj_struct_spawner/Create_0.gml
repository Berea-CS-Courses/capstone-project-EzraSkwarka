ds_struct_types = 0;

enum struct {
	obj_structure_pebble_refiner,
	obj_structure_mouse_tool
}

scr_create_struct_type("Pebble Reffiner", obj_structure_pebble_refiner);
scr_create_struct_type("Mouse Tool", obj_structure_mouse_tool);

building = false;
selectStruct = 0;

mousex = 0;
mousey = 0;

//these are to account for the fact that the inital grid does not line up with the room's origin
cell_offset_x = 10; //there is no reason for these values other than assethic 
cell_offset_y = 15; 

cellHeight = 50;
cellWidth = 48; 