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

//----------
// Update Renown
//----------
ds_player_info[# 1, 1] = global.renown;