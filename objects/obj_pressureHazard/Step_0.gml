

//Sprite animation
    //if pressed and not on the last frame of the animation, proceed to the next one
    if(image_index != lastFrame and pressed == true){
        image_index += image_direction;
        //else IF the spikes are released, change the direction of the animation to go to the original wait state of the pressure plate
    } else if( release == true and image_direction == 1){
        image_direction = -1;
        //go back so the current image_index is not the last frame of the animation
        image_index --;
    }
    
    // if the current image_index is the 1st one, and the image direction is -1 we reset the animation process and the trap itself
       if(image_index == 0 and image_direction == -1){ 
            pressed = false;
            image_direction = 1;
            release =false;
        }
    