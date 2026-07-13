//draw myself 


// Draw Event
if (xspdBoost > 0) {
    // Draws the sprite tinted RED at 50% transparency
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * face, image_yscale, image_angle, c_blue , image_alpha );
} else {
    draw_sprite_ext(sprite_index , image_index , x , y , image_xscale * face , image_yscale , image_angle , image_blend , image_alpha);
}

var bar_x = 50;
var bar_y = 50;
var bar_w = 300;
var bar_h = 24;

// Background
draw_set_colour(c_black);
//if(recovery) {draw_set_color(c_red)} //<-optional
draw_rectangle(bar_x, bar_y, bar_x + bar_w, bar_y + bar_h, false);

// Fill amount
var fill = display_stamina / max_stamina;

// Filled bar
switch (stamina_regen_index) {
    case 0:
        draw_set_color(c_black);
        break;
    case 1:
        draw_set_color(c_yellow);
        break;
    case 2:
        draw_set_color(c_lime);
        break;
}

draw_rectangle(
    bar_x + 2,
    bar_y + 2,
    bar_x + (bar_w - 2) * fill,
    bar_y + bar_h - 2,
    false
        );

/*Optional text
draw_set_color(c_white);
draw_text(bar_x, bar_y - 20,
    string(floor(100)) + " / " + string(max_stamina)
);*