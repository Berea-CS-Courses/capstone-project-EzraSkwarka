
// Keep player within the room
x = clamp(x, 0, room_width-16);
y = clamp(y, 0, room_height-16);

// Keep the player from moving too fast
if (speed > 4) speed = 4;

// Stop player if no key pressed
if (keyboard_check(vk_nokey) and (speed > 0)) {
	speed -= .15;
	if (speed < 0) speed = 0;
	}
