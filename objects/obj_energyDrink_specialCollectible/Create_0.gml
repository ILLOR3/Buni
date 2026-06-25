// Inherit the parent event
event_inherited();
switch(global.difficulty)
{
    case Difficulty.EASY:
		speedBoost = 4;
        break;

    case Difficulty.NORMAL:
		speedBoost = 3;
        break;

    case Difficulty.HARD:
		speedBoost = 3;
        break;
}
