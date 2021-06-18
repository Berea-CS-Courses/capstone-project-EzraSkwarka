// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_attack(_self) 
{
if global.is_paused exit;	

with (_self) {
switch(mob_type) {
#region Slimes
case (node_types.mob_slime_forest):
case (node_types.mob_slime_artic):
case (node_types.mob_slime_molten):
	//Actions
	
	//Conditionals	
	if (image_index >= 13) { //14 frams @ 12 fps
		if !collision_circle(x, y, attack_radius, obj_player, false, false) { //player got away
			state = mob_states.idle;
		}
	}
	
	if (image_index >= 9) and (image_index < 11.1) { //between frames 10 and 11
		if (collision_circle(x, y, attack_radius - 3, obj_player, false, false)) {
			scr_hurt_player(attack_power);	
		}
	}
	
	//Animation
	switch(mob_type) {
		case (node_types.mob_slime_forest):
			if (sprite_index != spr_mob_slime_attack) {
				sprite_index = spr_mob_slime_attack;
			}
		break;
		
		case (node_types.mob_slime_artic):
			if (sprite_index != spr_mob_slime_attack_artic) {
				sprite_index = spr_mob_slime_attack_artic;
			}
		break;
		
		case (node_types.mob_slime_molten):
			if (sprite_index != spr_mob_slime_attack_molten) {
				sprite_index = spr_mob_slime_attack_molten;
			}
		break;
	}
	break;
	#endregion
}
}
}