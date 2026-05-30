//Values based on difficulty selected
switch(global.difficulty)
{
    case Difficulty.EASY:
		 preview_timer = 65;
        max_vspeed = 9;
        break;

    case Difficulty.NORMAL:
		 preview_timer = 50;
        max_vspeed = 10;
        break;

    case Difficulty.HARD:
		 preview_timer = 20;
        max_vspeed = 12;
        break;
}






alarm[0] = preview_timer;
k=1;

waiting_state = true;