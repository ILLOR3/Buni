draw_self();
draw_set_colour(c_white);
draw_set_font(Font1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);



var map_text= "";

switch(arrayIndex)
{
    case 0:
        map_text = "Original";
        break;

    case 1:
        map_text = "map2";
        break;

    case 2:
        map_text = "map3";
        break;
}

draw_text(x, y, map_text);
draw_text(x , y -30 , buttonLabel );