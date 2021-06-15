//----------
// Backstage Menus
//----------

if(keyboard_check_pressed(vk_escape)) { 
	global.is_paused = !global.is_paused;
	if (global.is_paused and !obj_relics_menu.show_relics_menu and
		!obj_inventory.show_inventory and !obj_structures_menu.show_structures_menu) {
			show_menu = true;
		} else {
			show_menu = false;
			drawn_menu = false;
			with obj_button {instance_destroy()}
		}
		
}
//----------
// Inventory
//----------
with(obj_inventory) {
	if(keyboard_check_pressed(ord("I"))) {
		//Close Esc Menu
		obj_GameState.show_menu = false;
		obj_GameState.drawn_menu = false;
		with obj_button {instance_destroy()}

		with(obj_relics_menu) {
			show_relics_menu = false;
		}
		with(obj_structures_menu) {
			show_structures_menu = false;
		}
		if (show_inventory == global.is_paused) {
			show_inventory = !show_inventory;
			global.is_paused = !global.is_paused;
		} else if (!show_inventory and global.is_paused) {
			show_inventory = true;	
		}
	}

	if(keyboard_check_pressed(vk_escape)) {
		if (show_inventory) {
			show_inventory = false;
		}
	}
}

//----------
// Relics
//----------
with(obj_relics_menu) {
	if(keyboard_check_pressed(ord("O"))) { 
		//Close Esc Menu
		obj_GameState.show_menu = false;
		obj_GameState.drawn_menu = false;
		with obj_button {instance_destroy()}

		with(obj_structures_menu) {
			show_structures_menu = false;
		}
		with(obj_inventory) {
			show_inventory = false;
		}
		if (show_relics_menu == global.is_paused) {
			show_relics_menu = !show_relics_menu;
			global.is_paused = !global.is_paused;
		} else if (!show_relics_menu and global.is_paused) {
			show_relics_menu = true;	
		}
	}

	if(keyboard_check_pressed(vk_escape)) {
		if (show_relics_menu) {
			show_relics_menu = false;
		}
	}
}

//----------
// Structures
//----------
with(obj_structures_menu) {
	if(keyboard_check_pressed(ord("P"))) {
		//Close Esc Menu
		obj_GameState.show_menu = false;
		obj_GameState.drawn_menu = false;
		with obj_button {instance_destroy()}


		with(obj_relics_menu) {
			show_relics_menu = false;	
		}
		with(obj_inventory) {
			show_inventory = false;
		}
		if (obj_struct_spawner.building) {
			obj_struct_spawner.building = false;
			global.is_paused = true;
			show_structures_menu = true;
		}
		else if (show_structures_menu == global.is_paused) {
			show_structures_menu = !show_structures_menu;
			global.is_paused = !global.is_paused;
		} else if (!show_structures_menu and global.is_paused) {
			show_structures_menu = true;	
		}
	}

	if(keyboard_check_pressed(vk_escape)) {
		if (show_structures_menu) {
			show_structures_menu = false;
		}
	}
}


//Prestige Call
if Reset {
	//Point Counter
	var total_count = 0;
	with (obj_inventory) {
		var ds_inv = ds_inventory
		var ii = 0; repeat(inv_slots){ // look through inventory
			total_count += ds_inv[# 1, ii];
			ds_inv[# 0, ii] = 0; // item = none
			ds_inv[# 1, ii] = 0; // amount = none
			ii += 1;
			}
	}

	with (obj_structure_parent) {
		total_count += (2 * structure_level);
	}

	//Clean Up
	obj_NodeController.nodes_spawned = 0;
	obj_NodeController.node_region_spawns =	[0, 0, 0, 0, 0, 0, 0];
	obj_MenuBuilder.struct_refrence = 0;
	
	global.renown += max(floor(log2(total_count)),0);
	global.mouse_level = 0;
	room_restart();
	
	
	
Reset = false;	
}