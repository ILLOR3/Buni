draw_set_font(Font1);
draw_set_colour(c_orange);
    var bar_x = room_width -50;
    var bar_y = 50;
    var bar_w =24;
    var bar_h = 24;
    
    // Background
    //if(recovery) {draw_set_color(c_red)} //<-optional
    draw_roundrect_colour_ext(bar_x, bar_y, bar_x + bar_w, bar_y + bar_h, 3 , 3  , c_orange ,c_orange ,false);

draw_set_colour(c_white)
draw_text(bar_x+bar_w/2 , bar_y + bar_h/2+2 , tot_points )
    