function draw_pie(x, y, value, max, colours, radius, transparency) {

if (value > 0) { // no point even running if there is nothing to display (also stops /0
    var i, len, tx, ty, val;
    
    var numberofsections = 60 // there is no draw_get_circle_precision() else I would use that here
    var sizeofsection = 360/numberofsections
    
    val = (value/max) * numberofsections 
    
    if (val > 1) { // HTML5 version doesnt like triangle with only 2 sides 
    
        draw_set_colour(merge_color(colours[@ 0], colours[@ 1], value/max));
        draw_set_alpha(transparency);
        
        draw_primitive_begin(pr_trianglefan);
        draw_vertex(x, y);
        
        for(i=0; i<=val; i++) {
            len = (i*sizeofsection)+90; // the 90 here is the starting angle
            tx = lengthdir_x(radius, len);
            ty = lengthdir_y(radius, len);
            draw_vertex(x+tx, y+ty);
        }
        draw_primitive_end();
        
    }
    draw_set_alpha(1);
}
}