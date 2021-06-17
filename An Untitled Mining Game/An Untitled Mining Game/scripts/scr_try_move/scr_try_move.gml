// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_try_move(_x_dir, _y_dir) 
{
// Move/Aproach X
if !(place_free(x + _x_dir, y)) {
	while (place_free(x + sign(_x_dir), y)) {
		x += sign(_x_dir)
	}
} else {
	x += _x_dir;
}
// Move/Aproach  Y
if !(place_free(x, y + _y_dir)) {
	while (place_free(x, y + sign(_y_dir))) {
		y += sign(_y_dir)
	}
} else {
	y += _y_dir;
}
}