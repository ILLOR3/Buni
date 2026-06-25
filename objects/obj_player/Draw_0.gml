//draw myself 


// Draw Event
if (xspdBoost > 0) {
    // Draws the sprite tinted RED at 50% transparency
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * face, image_yscale, image_angle, c_blue , image_alpha );
} else {
    draw_sprite_ext(sprite_index , image_index , x , y , image_xscale * face , image_yscale , image_angle , image_blend , image_alpha);
}