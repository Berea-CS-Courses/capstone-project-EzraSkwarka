// Determine active struct

switch (selected_struct) {
	case 0:
		active_sprite = spr_pebble_refiner;
		active_object = obj_structure_pebble_refiner;
		required_mats = [item.rock, 10];
		break;
	case 1:
		active_sprite = spr_mouse_level_station;
		active_object = obj_structure_mouse_tool;
		required_mats = [item.shiny_rock, 10];
		break;
	default:
		exit;
}