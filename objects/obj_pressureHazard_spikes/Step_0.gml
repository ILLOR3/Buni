 //sprite animation and hold-time handling
    
    //if the current image_index is NOT the last designed one, the animation keeps going
    if(image_index != stopFrame){
        image_index += image_direction;
        
        //else it it already has not been done (holding == false) it sets a timer where the animation stops for a bit, letting the spikes stay up for a bit
    }else if(holding == false){
        holding = true;
        alarm[0] = hold_timer; //wait time
    }


    //if the animation is complete, the object deletes itself and sends a message to it's respective obj_pressureHazard
    if(image_index == 0 and image_direction == -1){
        parent_id.release = true;
        instance_destroy();
    }