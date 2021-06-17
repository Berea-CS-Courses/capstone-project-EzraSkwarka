nodes_spawned = 0;
node_spawn_limit = 15;

node_region_spawns = [0, 0, 0, 0, 0, 0, 0];
node_region_spawn_limit = [
	3,	//Beach 
	6,	//Forest
	4,	//Desert
	4,	//Mines
	3,	//Mountian
	3,	//Tundra
	2	//Volcano
];

node_region_spawn_limit = [
	0,	//Beach 
	10,	//Forest
	0,	//Desert
	0,	//Mines
	0,	//Mountian
	0,	//Tundra
	0	//Volcano
];


enum region_list {
	beach,
	forest,
	desert,
	mines,
	mountian,
	tundra,
	volcano,
}

enum node_types {
	none,
	rock,
	tree,
	rock_iron,
	rock_coal,
	rock_coral,
	rock_mythril,
	rock_steel,
	rock_sandstone,
	rock_uranium,
	rock_molten,
	mob_slime,
	
	
}


enum mob_states {
	idle,
	roam,
	follow,
	attack,
}


enum node_rarity {
	common		= 0,
	uncommon	= 1,
	rare		= 2,
	ultrarare	= 3
}