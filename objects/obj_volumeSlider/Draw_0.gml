draw_set_colour(c_white);
draw_ellipse(left_end , y+10 , right_end ,y-10 , false)
draw_sprite_ext(spr_slider , spriteIndex , x , y , scale , scale , 0 , c_white , 1);
draw_text(x , y , variableValue_percent);
