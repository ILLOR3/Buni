draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var diff_text = "";

switch(global.difficulty)
{
    case Difficulty.EASY:
        diff_text = "EASY";
        break;

    case Difficulty.NORMAL:
        diff_text = "NORMAL";
        break;

    case Difficulty.HARD:
        diff_text = "HARD";
        break;
}

draw_text(x, y, diff_text);