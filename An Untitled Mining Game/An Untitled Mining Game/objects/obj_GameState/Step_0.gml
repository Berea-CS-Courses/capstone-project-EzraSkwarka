if(keyboard_check_pressed(vk_escape)) { 
	global.is_paused = !global.is_paused; 
}
with(obj_inventory) {
	if(keyboard_check_pressed(ord("I"))) { 
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