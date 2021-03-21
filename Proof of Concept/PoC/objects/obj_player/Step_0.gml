
// Keep player within the room
x = clamp(x, 0, room_width-16);
y = clamp(y, 0, room_height-16);

// Keep the player from moving too fast
if (speed > 1) speed = 1;