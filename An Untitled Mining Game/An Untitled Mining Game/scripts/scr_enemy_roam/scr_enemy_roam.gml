// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_roam(_self) 
{
if global.is_paused exit;

with (_self) {
switch (_self.mob_type) {
#region Slimes
case (node_types.mob_slime_forest):
case (node_types.mob_slime_artic):
case (node_types.mob_slime_molten):
	//Actions
	timer++;
	move_spd = .75;
	if	(image_index >= 5) and // fith frame
		(image_index < 14) {  // fourteenth frame
			scr_try_move(move_x, move_y);
	}
	
	//Conditionals
	if (image_index >= 18) {
		var ran_num = choose(0,1) //flip a coin
		switch (ran_num) {
			case 0: state = mob_states.idle;	//heads, idle
			case 1:								// tails change direction
				timer = 0; 
				dir = irandom_range(0, 359);
				move_x = lengthdir_x(move_spd, dir);
				move_y = lengthdir_y(move_spd, dir);
				break; 
		}
	}

	if collision_circle(x, y, follow_radius, obj_player, false, false) { //player spotted
		state = mob_states.follow;
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