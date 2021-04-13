/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7CC7A0D7
/// @DnDArgument : "code" "depth = -1;$(13_10)scale = 2;$(13_10)show_inventory = false;$(13_10)$(13_10)inv_slots = 4;$(13_10)inv_slots_width = 8;$(13_10)inv_slots_height = 3;$(13_10)$(13_10)selected_slot = 0;$(13_10)pickup_slot = -1;$(13_10)m_slotx = 0;$(13_10)m_sloty = 0;$(13_10)$(13_10)x_buffer = 2;$(13_10)y_buffer = 4;$(13_10)$(13_10)gui_width = display_get_gui_width();$(13_10)gui_height = display_get_gui_height();$(13_10)$(13_10)cell_size = 32;$(13_10)$(13_10)inv_UI_width = 288;$(13_10)inv_UI_height = 192;$(13_10)$(13_10)spr_inv_UI = spr_inventory_UI;$(13_10)spr_inv_items = spr_inventory_items;$(13_10)$(13_10)spr_inv_items_columns = sprite_get_width(spr_inv_items)/cell_size;$(13_10)spr_inv_items_rows = sprite_get_height(spr_inv_items)/cell_size;$(13_10)$(13_10)inv_UI_x = (gui_width * 0.5) - (inv_UI_width * 0.5 * scale);$(13_10)inv_UI_y = (gui_height * 0.5) - (inv_UI_height * 0.5 * scale);$(13_10)$(13_10)info_x = inv_UI_x + (9 * scale);$(13_10)info_y = inv_UI_y + (9 * scale);$(13_10)$(13_10)slots_x = info_x;$(13_10)slots_y = inv_UI_y + (40 * scale);$(13_10)$(13_10)//---------Player Info$(13_10)//0 = GOLD$(13_10)//1 = SILVER$(13_10)//2 = BRONZE$(13_10)//3 = NAME$(13_10)$(13_10)ds_player_info = ds_grid_create(2, 4);$(13_10)ds_player_info[# 0, 0] = "Gold";$(13_10)ds_player_info[# 0, 1] = "Silver";$(13_10)ds_player_info[# 0, 2] = "Copper";$(13_10)ds_player_info[# 0, 3] = "Name";$(13_10)$(13_10)ds_player_info[# 1, 0] = irandom_range(0,99);$(13_10)ds_player_info[# 1, 1] = irandom_range(0,99);$(13_10)ds_player_info[# 1, 2] = irandom_range(0,99);$(13_10)ds_player_info[# 1, 3] = "Player";$(13_10)$(13_10)//---------Inventory$(13_10)//0 = ITEM$(13_10)//1 = NUMBER$(13_10)$(13_10)ds_inventory = ds_grid_create(2, inv_slots);$(13_10)$(13_10)//---------Items$(13_10)enum item {$(13_10)	none		= 0,$(13_10)	rock		= 1,$(13_10)	shiny_rock	= 2,$(13_10)	height		= 3,$(13_10)}$(13_10)$(13_10)var yy = 0; repeat(inv_slots){$(13_10)	ds_inventory[# 0, yy] = irandom_range(1, item.height-1);$(13_10)	ds_inventory[# 1, yy] = irandom_range(1, 10);$(13_10)	$(13_10)	yy += 1;$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
depth = -1;
scale = 2;
show_inventory = false;

inv_slots = 4;
inv_slots_width = 8;
inv_slots_height = 3;

selected_slot = 0;
pickup_slot = -1;
m_slotx = 0;
m_sloty = 0;

x_buffer = 2;
y_buffer = 4;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

cell_size = 32;

inv_UI_width = 288;
inv_UI_height = 192;

spr_inv_UI = spr_inventory_UI;
spr_inv_items = spr_inventory_items;

spr_inv_items_columns = sprite_get_width(spr_inv_items)/cell_size;
spr_inv_items_rows = sprite_get_height(spr_inv_items)/cell_size;

inv_UI_x = (gui_width * 0.5) - (inv_UI_width * 0.5 * scale);
inv_UI_y = (gui_height * 0.5) - (inv_UI_height * 0.5 * scale);

info_x = inv_UI_x + (9 * scale);
info_y = inv_UI_y + (9 * scale);

slots_x = info_x;
slots_y = inv_UI_y + (40 * scale);

//---------Player Info
//0 = GOLD
//1 = SILVER
//2 = BRONZE
//3 = NAME

ds_player_info = ds_grid_create(2, 4);
ds_player_info[# 0, 0] = "Gold";
ds_player_info[# 0, 1] = "Silver";
ds_player_info[# 0, 2] = "Copper";
ds_player_info[# 0, 3] = "Name";

ds_player_info[# 1, 0] = irandom_range(0,99);
ds_player_info[# 1, 1] = irandom_range(0,99);
ds_player_info[# 1, 2] = irandom_range(0,99);
ds_player_info[# 1, 3] = "Player";

//---------Inventory
//0 = ITEM
//1 = NUMBER

ds_inventory = ds_grid_create(2, inv_slots);

//---------Items
enum item {
	none		= 0,
	rock		= 1,
	shiny_rock	= 2,
	height		= 3,
}

var yy = 0; repeat(inv_slots){
	ds_inventory[# 0, yy] = irandom_range(1, item.height-1);
	ds_inventory[# 1, yy] = irandom_range(1, 10);
	
	yy += 1;
}