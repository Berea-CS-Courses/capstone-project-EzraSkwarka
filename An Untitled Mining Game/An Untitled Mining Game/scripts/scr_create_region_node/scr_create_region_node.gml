// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_region_node(_region) 
{
// Init
var node_type = node_types.none;
var common, uncommon, rare, ultrarare = 0;
var target_rarity = -1;
var _successful_spawn = false;
//Pull Drop Rates
switch (_region) {
	
	/* Template 
	case region_list.none:					// use the name of the region
		common = [node_types.rock];			// fill with nodes of that rarity
		uncommon = [];						// if none leave blank, rarity will cascade down
		rare = [];							//common must not ever be empty
		ultrarare = [];
		break;
	*/
	
	
	case region_list.mountian:
		common = [node_types.rock, node_types.rock_coal];
		uncommon = [];
		rare = [node_types.tree];
		ultrarare = [];
		break;
		
	case region_list.beach:
		common = [node_types.rock_coral];
		uncommon = [];
		rare = [];
		ultrarare = [];
		break;
		
	case region_list.forest:
		common = [node_types.tree];
		uncommon = [node_types.rock_iron];
		rare = [node_types.mob_slime_forest];
		ultrarare = [];
		break;
		
	case region_list.desert:
		common = [node_types.rock];
		uncommon = [node_types.rock_sandstone];
		rare = [];
		ultrarare = [];
		break;

	case region_list.mines:
		common = [node_types.rock, node_types.rock_coal];
		uncommon = [node_types.rock_mythril];
		rare = [];
		ultrarare = [];
		break;

	case region_list.tundra:
		common = [node_types.rock];
		uncommon = [node_types.mob_slime_artic];
		rare = [node_types.rock_uranium];
		ultrarare = [];
		break;

	case region_list.volcano:
		common = [node_types.rock];
		uncommon = [node_types.mob_slime_molten];
		rare = [node_types.rock_molten];
		ultrarare = [];
		break;

}

// Pull Rarity
var random_number = floor(random_range(0, 100));
	// frist pass
	if (random_number > 99) {
		target_rarity = node_rarity.ultrarare;
	} else if (random_number > 89) {
		target_rarity = node_rarity.rare;
	} else if (random_number > 64) {
		target_rarity = node_rarity.uncommon;
	} else {
		target_rarity = node_rarity.common;
	}
	//cascade down if no nodes of that rarity
	if ((target_rarity == node_rarity.ultrarare) and (array_length(ultrarare) == 0)) {
		target_rarity -= 1;
	}
	if ((target_rarity == node_rarity.rare) and (array_length(rare) == 0)) {
		target_rarity -= 1;
	}
	if ((target_rarity == node_rarity.uncommon) and (array_length(uncommon) == 0)) {
		target_rarity -= 1;
	}

// Roll node from Rarity
if target_rarity == node_rarity.common {
	random_number = floor(random_range(0, array_length(common)));
	node_type = common[@ random_number];
} else if target_rarity == node_rarity.uncommon {
	random_number = floor(random_range(0, array_length(uncommon)));
	node_type = uncommon[@ random_number];
} else if target_rarity == node_rarity.rare { 
	random_number = floor(random_range(0, array_length(rare)));
	node_type = rare[@ random_number];
} else { // ultrarare
	random_number = floor(random_range(0, array_length(ultrarare)));
	node_type = ultrarare[@ random_number];
}


// Spawn Node
switch node_type {
	//Nodes
	case node_types.rock:
		var node = instance_create_layer(x, y, "Active", obj_node_parent);
		node._health = 2;
		node.spr_to_draw = spr_node_rock;
		node.tool_to_use = tools.pickaxe;
		node.drop_array = [item.rock, 10]
		random_number = irandom(100)
		if random_number >= 50 {
			array_push(node.drop_array, item.coal, 2);
		}
		_successful_spawn = true;
		break;
		
	case node_types.rock_coal:
		var node = instance_create_layer(x, y, "Active", obj_node_parent);
		node._health = 2;
		node.spr_to_draw = spr_node_rock_coal;
		node.tool_to_use = tools.pickaxe;
		node.drop_array = [item.coal, 5];
		_successful_spawn = true;
		break;
		
	case node_types.rock_iron:
		var node = instance_create_layer(x, y, "Active", obj_node_parent);
		node._health = 4;
		node.spr_to_draw = spr_node_rock_iron;
		node.tool_to_use = tools.pickaxe;
		node.drop_array = [item.iron_ore, 2];
		_successful_spawn = true;
		break;
		
	case node_types.rock_coral:
		var node = instance_create_layer(x, y, "Active", obj_node_parent);
		node._health = 1;
		node.spr_to_draw = spr_node_rock_coral;
		node.tool_to_use = tools.pickaxe;
		node.drop_array = [item.coral, 2];
		_successful_spawn = true;
		break;
		
	case node_types.rock_mythril:
		var node = instance_create_layer(x, y, "Active", obj_node_parent);
		node._health = 10;
		node.spr_to_draw = spr_node_rock_mythril;
		node.tool_to_use = tools.pickaxe;
		node.drop_array = [item.mythril_ore, 2];
		_successful_spawn = true;
		break;
		
	case node_types.rock_steel:
		var node = instance_create_layer(x, y, "Active", obj_node_parent);
		node._health = 8;
		node.spr_to_draw = spr_node_rock_steel;
		node.tool_to_use = tools.pickaxe;
		node.drop_array = [item.steel_ore, 2];
		_successful_spawn = true;
		break;
		
	case node_types.rock_sandstone:
		var node = instance_create_layer(x, y, "Active", obj_node_parent);
		node._health = 6;
		node.spr_to_draw = spr_node_rock_sandstone;
		node.tool_to_use = tools.pickaxe;
		node.drop_array = [item.copper_ore, 2];
		_successful_spawn = true;
		break;
		
	case node_types.rock_uranium:
		var node = instance_create_layer(x, y, "Active", obj_node_parent);
		node._health = 14;
		node.spr_to_draw = spr_node_rock_uranium;
		node.tool_to_use = tools.pickaxe;
		node.drop_array = [item.uranium_ore, 2];
		_successful_spawn = true;
		break;
		
	case node_types.rock_molten:
		var node = instance_create_layer(x, y, "Active", obj_node_parent);
		node._health = 20;
		node.spr_to_draw = spr_node_rock_molten;
		node.tool_to_use = tools.pickaxe;
		node.drop_array = [item.molten_ore, 2];
		_successful_spawn = true;
		break;
		
	case node_types.tree:
		var node = instance_create_layer(x, y, "Active", obj_node_parent);
		node._health = 1;
		node.spr_to_draw = spr_node_tree;
		node.tool_to_use = tools.axe;
		node.drop_array = [item.wood, 5];
		_successful_spawn = true;
		break;

	//Mobs
	case node_types.mob_slime_forest:
		var node = instance_create_layer(x, y, "Active", obj_mob_parent);
		node.mob_type = node_types.mob_slime_forest;
		node._health = 2;
		node.attack_power = 1;
		node.tool_to_use = tools.pickaxe;
		node.drop_array = [item.shiny_rock, 3];
		_successful_spawn = true;
		break;
		
	case node_types.mob_slime_artic:
		var node = instance_create_layer(x, y, "Active", obj_mob_parent);
		node.mob_type = node_types.mob_slime_artic;
		node._health = 4;
		node.attack_power = 2;
		node.tool_to_use = tools.pickaxe;
		node.drop_array = [item.shiny_rock, 5];
		_successful_spawn = true;
		break;
		
	case node_types.mob_slime_molten:
		var node = instance_create_layer(x, y, "Active", obj_mob_parent);
		node.mob_type = node_types.mob_slime_molten;
		node._health = 8;
		node.attack_power = 3;
		node.tool_to_use = tools.pickaxe;
		node.drop_array = [item.shiny_rock, 10];
		_successful_spawn = true;
		break;

	case node_types.none:
		break;

}

if (_successful_spawn) {
	// Non Varing Comands
	if !(node.spr_to_draw == 0) {
		node.mask_index = node.spr_to_draw;
	}
	node.max_health = node._health;
	
	obj_NodeController.nodes_spawned += 1;
	obj_NodeController.node_region_spawns[_region] += 1;
	node.region = _region;
	
}

}