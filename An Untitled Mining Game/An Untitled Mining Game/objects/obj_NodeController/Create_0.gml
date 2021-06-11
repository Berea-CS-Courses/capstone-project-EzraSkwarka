nodes_spawned = 0;
node_spawn_limit = 15;

node_region_spawns =		[0, 0, 0, 0, 0, 0, 0];
node_region_spawn_limit =	[3, 4, 5, 6, 4, 3, 2];


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
	
	
}

enum node_rarity {
	common		= 0,
	uncommon	= 1,
	rare		= 2,
	ultrarare	= 3
}