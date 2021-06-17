// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_hurt_player(_amount) 
{
	if (obj_player.i_frames_remaning == 0) {
		obj_player.i_frames_remaning = obj_player.i_frames;
		health -= _amount;
	}
}