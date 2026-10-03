// Inherit the parent event
event_inherited();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

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
