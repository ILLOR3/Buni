
draw_sprite_ext(spr_button, spriteIndex , x , y , 3*scale , 3*scale , 0 , c_white , transparency);
if(transparency <1){
transparency += random_range(0.005 , 0.008) * transSpeed;
}
draw_text_colour(x, y, buttonLabel , c_white ,c_white , c_white , c_white , transparency );