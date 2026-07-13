
//checks if the object is supposed to stop, and if not it moves
if(stop_state == false){
x+=movedir*move_speed;
}

//checks if it has reached the edges of the room, in which case it stops and changes direction
if( (x <=leftEdge or x>=rightEdge)and stop_state == false){
    stop_state = true; // it stops
    alarm[0] = stop_time;//it stays still for "stop_time"

    
}

//animation handling
timeUntilNextFrame++;
if(timeUntilNextFrame >= 3){
image_index += movedir;
timeUntilNextFrame = 0;    
}
