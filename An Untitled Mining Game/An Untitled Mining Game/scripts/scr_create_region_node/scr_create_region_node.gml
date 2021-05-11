// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_region_node(_region) 
{
var random_number = floor(random_range(0, 100 + 1));
			
switch (_region) {
	
	case region_list.forest:
		if((random_number >= 75)) {
				instance_create_layer(x + 0, y + 0, "Active", obj_node_tree);
			} else {
				instance_create_layer(x + 0, y + 0, "Active", obj_node_rock);
			}
		break;
		
	case region_list.beach:
		instance_create_layer(x + 0, y + 0, "Active", obj_node_rock);
		break;
		
}
}