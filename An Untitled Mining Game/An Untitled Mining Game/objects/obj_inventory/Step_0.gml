/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5FFE34AB
/// @DnDArgument : "code" "if(keyboard_check_pressed(ord("I"))) { $(13_10)	if (!show_inventory and !global.is_paused) {$(13_10)		show_inventory = true;$(13_10)		global.is_paused = true;$(13_10)	} else if (!show_inventory and global.is_paused) {$(13_10)		show_inventory = true;	$(13_10)	}$(13_10)}$(13_10)$(13_10)if(keyboard_check_pressed(vk_escape)) {$(13_10)	if (show_inventory) {$(13_10)		show_inventory = false;$(13_10)	}$(13_10)}"
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