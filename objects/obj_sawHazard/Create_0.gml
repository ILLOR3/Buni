//Values based on difficulty selected
switch(global.difficulty)
{
    case Difficulty.EASY:
		move_speed  = 2
		stop_time = 80 
        break;

    case Difficulty.NORMAL:
	move_speed  = 3
	stop_time = 60 
        break;

    case Difficulty.HARD:
		move_speed  = 3.5
		stop_time = 40 
        break;
}


min_xPos = 192;
max_xPos = 1216;
alarm[0]  =stop_time;
stop_state = true;



movedir = irandom_range(0 , 1);
if (movedir == 0){movedir = -1};