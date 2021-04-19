// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_struct_type(struct_name, struct_obj_type) 
{
var arg_num = argument_count;

if (!ds_exists(ds_struct_types, ds_type_grid)) {
	ds_struct_types = ds_grid_create(arg_num, 1);
	var height = 1;
} else {
	var height = ds_grid_height(ds_struct_types);
	ds_grid_resize(ds_struct_types, arg_num, height+1);
	height += 1;
}

var i = 0; repeat(arg_num) {
	ds_struct_types[# i, height - 1] = argument[i];
	i += 1;
}

}