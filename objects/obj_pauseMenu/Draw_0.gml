if (global.paused && sprite_exists(frozen_sprite)) {

    // Draw frozen snapshot stretched to fill the room
    draw_sprite_stretched(frozen_sprite, 0, 0, 0, room_width, room_height);

    // Dim overlay
    draw_set_alpha(0.5);
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1);
}