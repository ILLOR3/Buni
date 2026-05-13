//Values based on difficulty selected
switch(global.difficulty)
{
    case Difficulty.EASY:
		trap_delay = 60; 
        break;

    case Difficulty.NORMAL:
		trap_delay = 50; //milliseconds
        break;

    case Difficulty.HARD:
		trap_delay = 40; 
        break;
}
