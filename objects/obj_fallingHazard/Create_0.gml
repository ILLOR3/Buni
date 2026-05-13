//Values based on difficulty selected
switch(global.difficulty)
{
    case Difficulty.EASY:
		 preview_timer = 65;
        break;

    case Difficulty.NORMAL:
		 preview_timer = 50;
        break;

    case Difficulty.HARD:
		 preview_timer = 20;
        break;
}






alarm[0] = preview_timer;
k=1;
max_vspeed = 12;
waiting_state = true;