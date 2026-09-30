//Values based on difficulty selected
switch(global.difficulty)
{
    case Difficulty.EASY:
		hold_timer = 40;
        break;

    case Difficulty.NORMAL:
		hold_timer = 60;
        break;

    case Difficulty.HARD:
		hold_timer = 70;
        break;
}

holding = false;
stopFrame = 10;
image_direction = 1;   