// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_consume_mats_for_struct(required_mats) 
{
var i = 0; repeat (array_length(required_mats)/2) {
	scr_consume_item_from_inventory(required_mats[i], required_mats[i + 1])
	i += 2;
}
return true;
}