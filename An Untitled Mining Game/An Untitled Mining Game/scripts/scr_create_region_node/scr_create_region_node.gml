// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_region_node(_region) 
{
var random_number = floor(random_range(0, 100));
var node_type = node_types.none;
var common, uncommon, rare, ultrarare, target_rarity = 0;
switch (_region) {
	
	case region_list.mountian:
		if((random_number >= 10))	{node_type = node_types.rock;}
		else						{node_type = node_types.tree;}
		break;
		
	case region_list.beach:
		node_type = node_types.rock_coral;
		break;
		
	case region_list.forest:
		if (random_number >= 25)	{node_type = node_types.tree;}
		else						{node_type = node_types.rock_iron}
		break;
		
	case region_list.desert:
		if (random_number >= 60)	{node_type = node_types.rock_sandstone;}
		else						{node_type = node_types.rock}
		
		break;

	case region_list.mines:
		if (random_number >= 70)	{node_type = node_types.rock_mythril;}
		else						{node_type = node_types.rock}
		break;

	case region_list.tundra:
		if (random_number >= 80)	{node_type = node_types.rock_uranium;}
		else						{node_type = node_types.rock}
		break;

	case region_list.volcano:
		if (random_number >= 90)	{node_type = node_types.rock_molten;}
		else						{node_type = node_types.rock}
		break;

}

switch node_type {
	case node_types.rock:
		var node = instance_create_layer(x + 0, y + 0, "Active", obj_node_parent);
		node.node_health = 2;
		node.spr_to_draw = spr_node_rock;
		node.mask_index = node.spr_to_draw;
		node.tool_to_use = tools.pickaxe;
		node.spawn_resource = item.rock;
		node.base_rate = 10;
		obj_NodeController.nodes_spawned += 1;
		break;
		
	case node_types.rock_iron:
		var node = instance_create_layer(x + 0, y + 0, "Active", obj_node_parent);
		node.node_health = 4;
		node.spr_to_draw = spr_node_rock_iron;
		node.mask_index = node.spr_to_draw;
		node.tool_to_use = tools.pickaxe;
		node.spawn_resource = item.rock;
		node.base_rate = 20;
		obj_NodeController.nodes_spawned += 1;
		break;
		
	case node_types.rock_coral:
		var node = instance_create_layer(x + 0, y + 0, "Active", obj_node_parent);
		node.node_health = 1;
		node.spr_to_draw = spr_node_rock_coral;
		node.mask_index = node.spr_to_draw;
		node.tool_to_use = tools.pickaxe;
		node.spawn_resource = item.rock;
		node.base_rate = 10;
		obj_NodeController.nodes_spawned += 1;
		break;
		
	case node_types.rock_mythril:
		var node = instance_create_layer(x + 0, y + 0, "Active", obj_node_parent);
		node.node_health = 10;
		node.spr_to_draw = spr_node_rock_mythril;
		node.mask_index = node.spr_to_draw;
		node.tool_to_use = tools.pickaxe;
		node.spawn_resource = item.rock;
		node.base_rate = 50;
		obj_NodeController.nodes_spawned += 1;
		break;
		
	case node_types.rock_steel:
		var node = instance_create_layer(x + 0, y + 0, "Active", obj_node_parent);
		node.node_health = 8;
		node.spr_to_draw = spr_node_rock_steel;
		node.mask_index = node.spr_to_draw;
		node.tool_to_use = tools.pickaxe;
		node.spawn_resource = item.rock;
		node.base_rate = 40;
		obj_NodeController.nodes_spawned += 1;
		break;
		
	case node_types.rock_sandstone:
		var node = instance_create_layer(x + 0, y + 0, "Active", obj_node_parent);
		node.node_health = 6;
		node.spr_to_draw = spr_node_rock_sandstone;
		node.mask_index = node.spr_to_draw;
		node.tool_to_use = tools.pickaxe;
		node.spawn_resource = item.rock;
		node.base_rate = 30;
		obj_NodeController.nodes_spawned += 1;
		break;
		
	case node_types.rock_uranium:
		var node = instance_create_layer(x + 0, y + 0, "Active", obj_node_parent);
		node.node_health = 14;
		node.spr_to_draw = spr_node_rock_uranium;
		node.mask_index = node.spr_to_draw;
		node.tool_to_use = tools.pickaxe;
		node.spawn_resource = item.rock;
		node.base_rate = 70;
		obj_NodeController.nodes_spawned += 1;
		break;
		
	case node_types.rock_molten:
		var node = instance_create_layer(x + 0, y + 0, "Active", obj_node_parent);
		node.node_health = 20;
		node.spr_to_draw = spr_node_rock_molten;
		node.mask_index = node.spr_to_draw;
		node.tool_to_use = tools.pickaxe;
		node.spawn_resource = item.rock;
		node.base_rate = 100;
		obj_NodeController.nodes_spawned += 1;
		break;
		
	case node_types.tree:
		var node = instance_create_layer(x + 0, y + 0, "Active", obj_node_parent);
		node.node_health = 1;
		node.spr_to_draw = spr_node_tree;
		node.mask_index = node.spr_to_draw;
		node.tool_to_use = tools.axe;
		node.spawn_resource = item.wood;
		node.base_rate = 5;
		obj_NodeController.nodes_spawned += 1;
		break;

	case node_types.none:
		break;

}



}