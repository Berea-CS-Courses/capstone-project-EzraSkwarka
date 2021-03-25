//Set global position
global.player_x = x;
global.player_y = y;


// Keep player within the room
x = clamp(x, 0, room_width-16);
y = clamp(y, 0, room_height-16);

// Basic movement with inertia
if (keyboard_check(ord("W")) and place_free(x, y - 2)) {
	// motion_add(90, player_acceleration);
	player_speed += player_acceleration;
	vspeed -= player_speed;
}

if (keyboard_check(ord("A")) and place_free(x - 2, y)) {
	//motion_add(180, player_acceleration);
	player_speed += player_acceleration;
	hspeed -= player_speed;
}

if (keyboard_check(ord("S")) and place_free(x, y + 2)) {
	//motion_add(270, player_acceleration);
	player_speed += player_acceleration;
	vspeed += player_speed;
}

if (keyboard_check(ord("D")) and place_free(x + 2, y)) {
	//motion_add(0, player_acceleration);
	player_speed += player_acceleration;
	hspeed += player_speed;
}

//Keep player from moving into solid objects
if (!(place_free(x - 2, y)) and (hspeed < 0)) hspeed = 0;
if (!(place_free(x + 2, y)) and (hspeed > 0)) hspeed = 0;

if (!(place_free(x , y - 2)) and (vspeed < 0)) vspeed = 0;
if (!(place_free(x, y + 2)) and (vspeed > 0)) vspeed = 0;

// Keep the player from moving too fast
if (speed > 3) speed = 3;
if (player_speed > 3) player_speed = 3;

// Stop player if no key pressed
if (!keyboard_check(ord("W")) and !keyboard_check(ord("A")) and !keyboard_check(ord("S")) and !keyboard_check(ord("D")) and (speed > 0)) {
	speed -= .15;
	if (speed < 0) speed = 0;
	}

// Tool check
