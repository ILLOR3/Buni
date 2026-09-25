// Inherit the parent event
event_inherited();


if (animating) {
    animTimer++;
    if (animTimer >= animInterval) {
        animTimer = 0;
        image_index = animFrame;
        animFrame++;
        
        //speeds up the latter version of the animation
        if(animFrame >=halfAnimationFrame){
            animInterval -= 1;
        }
        
        if (animFrame >= lastFrame) {
            animating = false;
            animInterval = 3;//original value
            image_index = 0;
            totPoints +=2;
            show_debug_message("COIN TINGY");
        }
    }
}
