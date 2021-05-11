// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_hover(_width, _height, _x, _y) 
{

var mousex = device_mouse_x_to_gui(0);
var mousey = device_mouse_y_to_gui(0);

return (point_in_rectangle(mousex, mousey, _x, _y, _x + _width, _y + _height));
}