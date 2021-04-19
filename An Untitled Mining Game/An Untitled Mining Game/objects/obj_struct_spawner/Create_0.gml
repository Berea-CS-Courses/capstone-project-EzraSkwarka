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