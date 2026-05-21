switch(global.difficulty)
{
    case Difficulty.EASY:
        preview_time = 160;
        break;

    case Difficulty.NORMAL:
		preview_time = 120;
        break;

    case Difficulty.HARD:
		preview_time = 100;
        break;
}
alarm[0] = preview_time;