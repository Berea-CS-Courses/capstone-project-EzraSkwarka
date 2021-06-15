// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_attack(_self) 
{
with (_self) {
	//Actions
	
	//Conditionals
	if !collision_circle(x, y, 64, obj_player, false, false) { //player got away
		state = mob_states.idle;
	}
	//Animation
	if (sprite_index != spr_mob_slime_attack) {
		sprite_index = spr_mob_slime_attack;
	}
	
}
}