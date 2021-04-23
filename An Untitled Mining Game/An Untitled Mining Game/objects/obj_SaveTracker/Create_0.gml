// Create any helper objects
instance_create_layer(0, 0, "UI", obj_node_parent);

//Create list of objects with info that needs to be saved
node_type_array = [
	obj_node_rock, 
	obj_node_tree, 
	obj_structure_mouse_tool, 
	obj_structure_pebble_refiner,
	obj_player,
	obj_inventory
];
