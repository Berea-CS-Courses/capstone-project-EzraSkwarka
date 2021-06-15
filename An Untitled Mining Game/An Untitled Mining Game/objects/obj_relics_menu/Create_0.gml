//General
depth = -1;
scale = 2;
show_relics_menu = false;

x_buffer = 2;
y_buffer = 4;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

cell_size = 32;

//Equipment
equipment_UI_width = 149;
equipment_UI_height = 192;

/*equipment_slots = 9;
equipment_slots_width = 3;
equipment_slots_height = 3;

equipment_selected_slot = 0;
equipment_m_slotx = 0;
equipment_m_sloty = 0;*/

// spr_equipment_UI = spr_equipment_UI;
	//Once I make the equipment sprite sheet ill need these
	// spr_inv_items = spr_inventory_items;

	// spr_inv_items_columns = sprite_get_width(spr_inv_items)/cell_size;
	// spr_inv_items_rows = sprite_get_height(spr_inv_items)/cell_size;

	//Position on screen
equipment_UI_x = (gui_width * 0.2) - (equipment_UI_width * 0.5 * scale);
equipment_UI_y = (gui_height * 0.75) - (equipment_UI_height * 0.5 * scale);

//equipment_info_x = equipment_UI_x + (9 * scale);
/*equipment_info_y = equipment_UI_y + (9 * scale);

equipment_slots_x = equipment_info_x;
equipment_slots_y = equipment_UI_y + (40 * scale);*/

//Tools

tools_UI_width = 320;
tools_UI_height = 119;

/*tools_slots = 8;
tools_slots_width = 8;
tools_slots_height =1;

tools_selected_slot = 0;
tools_m_slotx = 0;
tools_m_sloty = 0;*/

// spr_tools_UI = spr_tools_UI;
	//Once I make the tools sprite sheet ill need these
	// spr_inv_items = spr_inventory_items;

	// spr_inv_items_columns = sprite_get_width(spr_inv_items)/cell_size;
	// spr_inv_items_rows = sprite_get_height(spr_inv_items)/cell_size;

	//Position on screen
tools_UI_x = (gui_width * 0.5) - (tools_UI_width * 0.5 * scale);
tools_UI_y = (gui_height * 0.2) - (tools_UI_height * 0.5 * scale);

//tools_info_x = tools_UI_x + (9 * scale);
/*tools_info_y = tools_UI_y + (9 * scale);

tools_slots_x = tools_info_x;
tools_slots_y = tools_UI_y + (40 * scale);*/

//Relics

relics_UI_width = 320;
relics_UI_height = 192;

//relics_slots = 24;
//relics_slots_width = 8;
//relics_slots_height = 3;

//relics_selected_slot = 0;
//relics_m_slotx = 0;
//relics_m_sloty = 0;

// spr_relics_UI = spr_relics_UI;
	//Once I make the relics sprite sheet ill need these
	// spr_inv_items = spr_inventory_items;

	// spr_inv_items_columns = sprite_get_width(spr_inv_items)/cell_size;
	// spr_inv_items_rows = sprite_get_height(spr_inv_items)/cell_size;

	//Position on screen
relics_UI_x = (gui_width * 0.75) - (relics_UI_width * 0.5 * scale);
relics_UI_y = (gui_height * 0.75) - (relics_UI_height * 0.5 * scale);

//relics_info_x = relics_UI_x + (9 * scale);
//relics_info_y = relics_UI_y + (9 * scale);

//relics_slots_x = relics_info_x;
//relics_slots_y = relics_UI_y + (40 * scale);
//------------

//----------
// Minor Relics
//----------
enum minor_relics{
	none,
	pick_power,
	bonus_inv_slots,
	height
}

pick_power = 1;
bonus_inv_slots = 0;