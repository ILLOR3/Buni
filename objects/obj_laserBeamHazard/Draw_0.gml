if( alarm[0] == 0){
    alarm[1] = 100;
    chooseStartingPoints();
    while(alarm[1] >0){
     draw_set_color(c_red);
     draw_line_width(point1x , point1y , point2x , point2y , 4);
    }
    alarm[0] = cooldown_timer;
}