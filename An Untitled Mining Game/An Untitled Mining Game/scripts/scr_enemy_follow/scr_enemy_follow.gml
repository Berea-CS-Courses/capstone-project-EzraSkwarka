// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_follow(_self) 
{
if global.is_paused exit;

with (_self) {
switch (_self.mob_type) {
#region Slimes
case (node_types.mob_slime_forest):
case (node_types.mob_slime_artic):
case (node_types.mob_slime_molten):
	//Actions
	if (image_index <= 5) {
		dir = point_direction(x, y, obj_player.x, obj_player.y);
		move_spd = 1.5;
	}
	move_x = lengthdir_x(move_spd, dir);
	move_y = lengthdir_y(move_spd, dir);
	if	(image_index >= 5) and // fith frame
		(image_index < 14) {  // fourteenth frame
			scr_try_move(move_x, move_y);
	}
	//Conditionals
	if (image_index >= 17) {
		if collision_circle(x, y, attack_radius, obj_player, false, false) { //player in range
			state = mob_states.attack;
		} else if !collision_circle(x, y, follow_radius, obj_player, false, false) { //player got away
			state = mob_states.idle;
		}
	}
	
	//Animation
	switch(mob_type) {
		case (node_types.mob_slime_forest):
			if (sprite_index != spr_mob_slime_jump) {
				sprite_index = spr_mob_slime_jump;
			}
		break;
		
		case (node_types.mob_slime_artic):
			if (sprite_index != spr_mob_slime_jump_artic) {
				sprite_index = spr_mob_slime_jump_artic;
			}
		break;
		
		case (node_types.mob_slime_molten):
			if (sprite_index != spr_mob_slime_jump_molten) {
				sprite_index = spr_mob_slime_jump_molten;
			}
		break;
	}
	break;
	#endregion
}
}
}