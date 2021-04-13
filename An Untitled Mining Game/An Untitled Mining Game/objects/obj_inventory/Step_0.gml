/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5FFE34AB
/// @DnDArgument : "code" "if(keyboard_check_pressed(ord("I"))) { $(13_10)	if (!show_inventory and !global.is_paused) {$(13_10)		show_inventory = true;$(13_10)		global.is_paused = true;$(13_10)	} else if (!show_inventory and global.is_paused) {$(13_10)		show_inventory = true;	$(13_10)	}$(13_10)}$(13_10)$(13_10)if(keyboard_check_pressed(vk_escape)) {$(13_10)	if (show_inventory) {$(13_10)		show_inventory = false;$(13_10)	}$(13_10)}$(13_10)$(13_10)if(!show_inventory) exit;$(13_10)$(13_10)//-------$(13_10)// Determine Active Slot$(13_10)//-------$(13_10)mousex = device_mouse_x_to_gui(0);$(13_10)mousey = device_mouse_y_to_gui(0);$(13_10)$(13_10)var cell_xbuff = (cell_size + x_buffer) * scale;$(13_10)var cell_ybuff = (cell_size + y_buffer) * scale;$(13_10)$(13_10)var i_mousex = mousex - slots_x;$(13_10)var i_mousey = mousey - slots_y;$(13_10)$(13_10)var nx = i_mousex div cell_xbuff; //nearest slot$(13_10)var ny = i_mousey div cell_ybuff;$(13_10)$(13_10)if(nx >= 0 and nx < inv_slots_width and ny >= 0 and ny < inv_slots_height) {$(13_10)	var sx = i_mousex - (nx*cell_xbuff); //dont include the buffer in the slectable area$(13_10)	var sy = i_mousey - (ny*cell_ybuff);$(13_10)	$(13_10)	if ((sx < cell_size*scale) and (sy < cell_size * scale)) {$(13_10)		m_slotx = nx;$(13_10)		m_sloty = ny;$(13_10)	}$(13_10)}$(13_10)$(13_10)//Set Selected Slot to Mouse Pos$(13_10)selected_slot = min(inv_slots - 1 , m_slotx + (m_sloty * inv_slots_width));$(13_10)$(13_10)//----------$(13_10)// Pickup Item$(13_10)//----------$(13_10)var inv_grid = ds_inventory;$(13_10)var selected_item = inv_grid[# 0, selected_slot];$(13_10)$(13_10)if (pickup_slot != -1) {$(13_10)	if (mouse_check_button_pressed(mb_left)) {$(13_10)		if (selected_item == item.none) {	$(13_10)			//empty slot$(13_10)			inv_grid[# 0, selected_slot] = inv_grid[# 0, pickup_slot];$(13_10)			inv_grid[# 1, selected_slot] = inv_grid[# 1, pickup_slot];$(13_10)			$(13_10)			inv_grid[# 0, pickup_slot] = item.none;$(13_10)			inv_grid[# 1, pickup_slot] = 0;$(13_10)			$(13_10)			pickup_slot = -1;$(13_10)			$(13_10)		} else if (selected_item == inv_grid[# 0, pickup_slot]) {	$(13_10)			//same item in new slot$(13_10)			if (selected_slot != pickup_slot) {$(13_10)				inv_grid[# 1, selected_slot] += inv_grid[# 1, pickup_slot];$(13_10)				inv_grid[# 0, pickup_slot] = item.none;$(13_10)				inv_grid[# 1, pickup_slot] = 0;$(13_10)			}$(13_10)			pickup_slot = -1;$(13_10)		} else { //diffrent item$(13_10)			var selected_item_num = inv_grid[# 1, selected_slot];$(13_10)			inv_grid[# 0, selected_slot] = inv_grid[# 0, pickup_slot];$(13_10)			inv_grid[# 1, selected_slot] = inv_grid[# 1, pickup_slot];$(13_10)			$(13_10)			inv_grid[# 0, pickup_slot] = selected_item;$(13_10)			inv_grid[# 1, pickup_slot] = selected_item_num;$(13_10)			$(13_10)			pickup_slot = -1;$(13_10)		}$(13_10)	}$(13_10)} else if (selected_item != item.none) {$(13_10)	if (mouse_check_button_pressed(mb_right)) {$(13_10)		pickup_slot = selected_slot;$(13_10)	}$(13_10)}$(13_10)$(13_10)"
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

if(!show_inventory) exit;

//-------
// Determine Active Slot
//-------
mousex = device_mouse_x_to_gui(0);
mousey = device_mouse_y_to_gui(0);

var cell_xbuff = (cell_size + x_buffer) * scale;
var cell_ybuff = (cell_size + y_buffer) * scale;

var i_mousex = mousex - slots_x;
var i_mousey = mousey - slots_y;

var nx = i_mousex div cell_xbuff; //nearest slot
var ny = i_mousey div cell_ybuff;

if(nx >= 0 and nx < inv_slots_width and ny >= 0 and ny < inv_slots_height) {
	var sx = i_mousex - (nx*cell_xbuff); //dont include the buffer in the slectable area
	var sy = i_mousey - (ny*cell_ybuff);
	
	if ((sx < cell_size*scale) and (sy < cell_size * scale)) {
		m_slotx = nx;
		m_sloty = ny;
	}
}

//Set Selected Slot to Mouse Pos
selected_slot = min(inv_slots - 1 , m_slotx + (m_sloty * inv_slots_width));

//----------
// Pickup Item
//----------
var inv_grid = ds_inventory;
var selected_item = inv_grid[# 0, selected_slot];

if (pickup_slot != -1) {
	if (mouse_check_button_pressed(mb_left)) {
		if (selected_item == item.none) {	
			//empty slot
			inv_grid[# 0, selected_slot] = inv_grid[# 0, pickup_slot];
			inv_grid[# 1, selected_slot] = inv_grid[# 1, pickup_slot];
			
			inv_grid[# 0, pickup_slot] = item.none;
			inv_grid[# 1, pickup_slot] = 0;
			
			pickup_slot = -1;
			
		} else if (selected_item == inv_grid[# 0, pickup_slot]) {	
			//same item in new slot
			if (selected_slot != pickup_slot) {
				inv_grid[# 1, selected_slot] += inv_grid[# 1, pickup_slot];
				inv_grid[# 0, pickup_slot] = item.none;
				inv_grid[# 1, pickup_slot] = 0;
			}
			pickup_slot = -1;
		} else { //diffrent item
			var selected_item_num = inv_grid[# 1, selected_slot];
			inv_grid[# 0, selected_slot] = inv_grid[# 0, pickup_slot];
			inv_grid[# 1, selected_slot] = inv_grid[# 1, pickup_slot];
			
			inv_grid[# 0, pickup_slot] = selected_item;
			inv_grid[# 1, pickup_slot] = selected_item_num;
			
			pickup_slot = -1;
		}
	}
} else if (selected_item != item.none) {
	if (mouse_check_button_pressed(mb_right)) {
		pickup_slot = selected_slot;
	}
}