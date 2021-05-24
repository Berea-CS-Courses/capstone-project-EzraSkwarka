

if(!show_structures_menu) exit;

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
if (mouse_check_button_pressed(mb_left)) {
		var passing_slot = selected_slot;
		show_structures_menu = false;
		global.is_paused = false;
		with (obj_struct_spawner) {
			selected_struct = passing_slot + 1;
			building = true;
		}
}
