//Pause interupt
if global.is_paused exit;

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

// Move/Aproach X
if !(place_free(x + moveX, y)) {
	while (place_free(x + sign(moveX), y)) {
		x += sign(moveX)
	}
} else {
	x += moveX;
}
// Move/Aproach  Y
if !(place_free(x, y + moveY)) {
	while (place_free(x, y + sign(moveY))) {
		y += sign(moveY)
	}
} else {
	y += moveY;
}


x = clamp(x, 6, room_width);
y = clamp(y, 12, room_height);