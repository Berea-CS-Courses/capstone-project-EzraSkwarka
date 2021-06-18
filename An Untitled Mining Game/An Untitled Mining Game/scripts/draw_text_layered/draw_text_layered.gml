// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_text_layered(_x, _y, _outline_font, _outline_color, 
							_background_font, _background_color, _text) 
{
//Background
draw_set_font(_background_font);
var c = _background_color; 
draw_text_color(_x, _y, _text, c,c,c,c, 1);

//Overlay
draw_set_font(_outline_font);
var c = _outline_color; 
draw_text_color(_x, _y, _text, c,c,c,c, 1);
}