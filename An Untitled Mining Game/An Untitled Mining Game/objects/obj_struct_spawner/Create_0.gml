ds_struct_types = 0;

enum struct {
	pebble_refiner,
	mouse_tool,
	height = 2
}

// Default case in case draw runs before step
active_sprite = spr_pebble_refiner;
active_object = obj_structure_pebble_refiner;
required_mats = [item.rock, 10]; 

//scr_create_struct_type("Pebble Reffiner", obj_structure_pebble_refiner, [item.rock, 10]);
//scr_create_struct_type("Mouse Tool", obj_structure_mouse_tool, [item.shiny_rock, 10]);

building = false;
selected_struct = 1;

mousex = 0;
mousey = 0;
hex_empty = true;
mask_index = spr_tiny_col_mask; //so place_free will work

//these are to account for the fact that the inital grid does not line up with the room's origin
cell_offset_x = 10; //there is no reason for these values other than assethic 
cell_offset_y = 15; 

cellHeight = 50;
cellWidth = 48; 