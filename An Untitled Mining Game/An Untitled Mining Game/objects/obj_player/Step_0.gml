//Pause interupt
if global.is_paused exit;

if (i_frames_remaning > 0) {
	i_frames_remaning--;	
}

if (health <= 0) {scr_load_game(); exit;}

// Grab inputs
hInput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
vInput = keyboard_check(ord("S")) - keyboard_check(ord("W"));

// Reset speed
var moveX = 0;
var moveY = 0;

// Check Direction
if(hInput != 0 or vInput != 0){
	dir = point_direction(0,0,hInput,vInput);
	moveX = lengthdir_x(spd, dir);
	moveY = lengthdir_y(spd, dir);
 
   
}

scr_try_move(moveX, moveY)

x = clamp(x, 6, room_width);
y = clamp(y, 12, room_height);