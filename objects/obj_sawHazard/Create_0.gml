//Values based on difficulty selected
switch(global.difficulty)
{
    case Difficulty.EASY:
		move_speed  = 3;
		stop_time = 80 ;
        break;

    case Difficulty.NORMAL:
	move_speed  = 4;
	stop_time = 60 ;
        break;

    case Difficulty.HARD:
		move_speed  = 4.5;
		stop_time = 40 ;
        break;
}
switch(global.selectedMap){
    case Room_game_original:
        leftEdge = 128;
        rightEdge = 1472;
        image_xscale = 1.6;
        image_yscale = 1.6;
        break;
    
    case Room_game_map2:
        leftEdge = 480;
        rightEdge = 1120;
        image_xscale = 1.25;
        image_yscale = 1.25;
        break;
    
    
}
timeUntilNextFrame = 0;

alarm[0]  =stop_time;
stop_state = true;




movedir = irandom_range(0 , 1);
if (movedir == 0){movedir = -1} ;

