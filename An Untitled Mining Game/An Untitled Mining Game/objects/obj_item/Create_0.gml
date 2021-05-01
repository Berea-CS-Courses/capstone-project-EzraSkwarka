//----------
// Determine Sprite Bounds
//----------
cell_size = 16;
item_spr = spr_inventory_items_small;
spr_width = sprite_get_width(item_spr);
spr_height = sprite_get_height(item_spr);

//----------
// Info for subsprite
//----------
item_nun = 1;
x_frame = 0;
y_frame = 0;

//----------
// Offset center of sprite
//----------
x_offset = cell_size / 2;
y_offset = 2 * cell_size / 3;

//----------
// Lerp fopr smooth drop animation
//----------
drop_move = true;
var itemdir = irandom_range(0, 359);
var len =  irandom_range(cell_size * .9, cell_size * 1.5);
x_goal = x + lengthdir_x(len, itemdir);
y_goal = y + lengthdir_y(len, itemdir);;