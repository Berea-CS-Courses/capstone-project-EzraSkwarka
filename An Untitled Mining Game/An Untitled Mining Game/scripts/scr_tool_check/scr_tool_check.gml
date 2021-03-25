// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_tool_check() 
{
if (global.current_tool = 1) instance_create_layer(global.player_x, global.player_x, "UI", obj_tool_pickaxe)
if (global.current_tool = 2) instance_create_layer(global.player_x, global.player_x, "UI", obj_tool_axe)
}