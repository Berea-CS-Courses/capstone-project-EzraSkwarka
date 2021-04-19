//----------
// Backstage Menus
//----------

if(keyboard_check_pressed(vk_escape)) { 
	global.is_paused = !global.is_paused; 
}

with(obj_inventory) {
	if(keyboard_check_pressed(ord("I"))) {
		with(obj_relics_menu) {
			show_relics_menu = false;
		}
		with(obj_structures_menu) {
			show_structures_menu = false;
		}
		if (!show_inventory and !global.is_paused) {
			show_inventory = true;
			global.is_paused = true;
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

with(obj_relics_menu) {
	if(keyboard_check_pressed(ord("O"))) { 
		with(obj_structures_menu) {
			show_structures_menu = false;
		}
		with(obj_inventory) {
			show_inventory = false;
		}
		if (!show_relics_menu and !global.is_paused) {
			show_relics_menu = true;
			global.is_paused = true;
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


with(obj_structures_menu) {
	if(keyboard_check_pressed(ord("P"))) {
		with(obj_relics_menu) {
			show_relics_menu = false;	
		}
		with(obj_inventory) {
			show_inventory = false;
		}
		if (!show_structures_menu and !global.is_paused) {
			show_structures_menu = true;
			global.is_paused = true;
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