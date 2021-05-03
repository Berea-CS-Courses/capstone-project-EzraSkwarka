if (global.is_paused) exit;

if instance_exists(obj_structure_mouse_tool) {
	var _gml = 0;
	with (obj_structure_mouse_tool) {
		_gml += structure_level;		
	}
	global.mouse_level = _gml;
}

with (obj_toolbar) {
	var ct = equiped_tool;
}
selected_tool = ct;

switch (selected_tool) {
	case (tools.pickaxe):
		draw_spr = spr_pickaxe;
		break;
	case (tools.axe):
		draw_spr = spr_axe;
		break;
	default:
		break;
}

if (swing_state == "start") {
	target_angle =  90;
	swing_state = "back_swing";
} else if ( swing_state == "back_swing") {
	target_angle = 120;
	swing_state = "follow_through";
} else if (swing_state == "follow_through") {
	target_angle -= 4;
	if (target_angle <= 0) {
		target_angle = 0;
		swing_state = "rest";
	}
}