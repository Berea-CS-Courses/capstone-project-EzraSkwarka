// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_node_left_click(node_health, tool_to_use, resource_obj_to_spawn, base_rate) 
{
	if !global.is_swinging {
		if (distance_to_object(obj_player) <= 16) {
			if (node_health > 0) {
				node_health -= 1;
				if (node_health > 0) {
					return node_health;
				}
			} 
		
			if (node_health <= 0) {
				instance_destroy();
				bonus_multiplier = (1 + .1 * (global.mouse_level + global.renown));
				repeat(floor(base_rate * bonus_multiplier))	{
					instance_create_layer(x + 0, y + 0, "Active", resource_obj_to_spawn);
				}
			}
		}
	}
}