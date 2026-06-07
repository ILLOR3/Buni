switch(global.difficulty)
{
    case Difficulty.EASY:
		collect_time = 390;
        break;

    case Difficulty.NORMAL:
		collect_time = 360;
        break;

    case Difficulty.HARD:
		collect_time = 330;
        break;
}

tot_points = 3;
alarm[0] = collect_time;