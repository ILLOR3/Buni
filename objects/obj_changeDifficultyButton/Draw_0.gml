// Inherit the parent event
event_inherited();
switch(global.difficulty)
{
    case Difficulty.EASY:
        buttonLabel = "EASY";
        break;

    case Difficulty.NORMAL:
        buttonLabel = "NORMAL";
        break;

    case Difficulty.HARD:
        buttonLabel = "HARD";
        break;
}
