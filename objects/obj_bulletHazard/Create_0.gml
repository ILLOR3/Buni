//Values based on difficulty selected
switch(global.difficulty)
{
    case Difficulty.EASY:
		max_moveSpeed= 8;
        break;

    case Difficulty.NORMAL:
		max_moveSpeed = 9;
        break;

    case Difficulty.HARD:
		max_moveSpeed =10;
        break;
}
acceleration = 0.2;
xspd = 0;