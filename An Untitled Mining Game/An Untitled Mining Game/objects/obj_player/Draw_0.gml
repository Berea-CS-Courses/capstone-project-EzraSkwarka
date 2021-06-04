var _anim_speed;
if global.is_paused {
	_anim_speed = 0;
} else {
	_anim_speed = anim_speed;
}

if(hInput != 0 or vInput != 0){     //Are we moving?
    y_frame = dir/45;
    //INCREMENT FRAME FOR ANIMATION
    x_frame += _anim_speed/room_speed;
    if(x_frame >= anim_length) x_frame = 0;
} else {
    x_frame = 0.9;      //If not moving, freeze the animation on the first frame
}
 
var xx = x-sprite_x_offset;    //Calculate where to draw sprite, depending on "origin" placement
var yy = y-sprite_y_offset;
 
//DRAW SPRITE PART
draw_sprite_part_ext(
    spr_spritesheet, 
    0,
    floor(x_frame)*x_frame_size,
    y_frame*y_frame_size,
    x_frame_size,
    y_frame_size,
    xx,
    yy,
    image_xscale,image_yscale,image_blend,image_alpha
);
mask_index = spr_spritesheet; // oh god, this is so hacky