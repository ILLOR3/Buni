if (dragging) {
    if (mouse_check_button(mb_left)) {
        x = clamp(mouse_x, left_end, right_end);
        //tiny button animation
        spriteIndex = 1;
        scale = 1.25;
    } else {
        dragging = false;
        //going back to normal after mouse leaves
        spriteIndex = 0;
        scale = 1;
    }
}
variableValue_percent = ((x - left_end) / totalLenght) * 100;

