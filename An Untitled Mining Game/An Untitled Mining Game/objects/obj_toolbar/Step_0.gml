if global.is_paused exit;

if mouse_wheel_up() {equiped_tool += -1;} 
else if mouse_wheel_down() {equiped_tool += 1;}

if keyboard_check_pressed(ord("1")) equiped_tool = 1;
if keyboard_check_pressed(ord("2")) equiped_tool = 2;


if (equiped_tool < 1) equiped_tool = toolbar_size;
if(equiped_tool > (toolbar_size)) equiped_tool = 1;	