// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_node_left_click(node_health, tool_to_use, resource_mat_number_to_spawn, base_rate) 
{
	with(obj_toolbar) {
		var current_tool = equiped_tool;
	}
	with (obj_tool) {
		if !(swing_state == "rest") {
			var is_swinging = true;
			show_debug_message("ping");
		} else {
			var is_swinging = false;	
		}
	}
	if (current_tool == tool_to_use) {
		if !is_swinging {
			if (distance_to_object(obj_player) <= 16) {
				if (node_health > 0) {
					node_health -= obj_relics_menu.pick_power;
				} 
		
				if (node_health <= 0) {
					instance_destroy();
					obj_NodeController.nodes_spawned -= 1;
					bonus_multiplier = (1 + .1 * (global.mouse_level + global.renown));
					repeat(floor(base_rate * bonus_multiplier))	{
						//instance_create_layer(x + 0, y + 0, "Active", resource_obj_to_spawn);
						var inst = instance_create_layer(x, y, "Active", obj_item);
						with (inst) {
							item_num = resource_mat_number_to_spawn;
							x_frame = item_num mod (spr_width/cell_size);
							y_frame = item_num div (spr_width/cell_size);
						}
						show_debug_message("dropped an item")
					}
				}
			}
		
		}
	}
return node_health;
}