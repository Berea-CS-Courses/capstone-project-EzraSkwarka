// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_region_node(_region) 
{
var random_number = floor(random_range(0, 100 + 1));
var node_type = node_types.none;
switch (_region) {
	
	case region_list.mountian:
		if((random_number >= 90)) {
			node_type = node_types.tree;
		} else {
			node_type = node_types.rock;
		}
		break;
		
	case region_list.beach:
		node_type = node_types.rock;
		break;
		
	case region_list.forest:
		node_type = node_types.tree;
		break;
		
	case region_list.desert:
	case region_list.mines:
	case region_list.tundra:
	case region_list.volcano:
		break;
}

switch node_type {
	case node_types.rock:
		var node = instance_create_layer(x + 0, y + 0, "Active", obj_node_parent);
		node.node_health = 2;
		node.spr_to_draw = spr_rock_node;
		node.mask_index = node.spr_to_draw;
		node.tool_to_use = tools.pickaxe;
		node.spawn_resource = item.rock;
		node.base_rate = 30;
		obj_NodeController.nodes_spawned += 1;
		break;
		
	case node_types.tree:
		var node = instance_create_layer(x + 0, y + 0, "Active", obj_node_parent);
		node.node_health = 1;
		node.spr_to_draw = spr_tree_node;
		node.mask_index = node.spr_to_draw;
		node.tool_to_use = tools.axe;
		node.spawn_resource = item.rock;
		node.base_rate = 15;
		obj_NodeController.nodes_spawned += 1;
		break;

	case node_types.none:
		break;

}



}