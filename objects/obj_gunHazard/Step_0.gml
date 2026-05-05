//checks if the object is supposed to stop, and if not it moves
if(stop_state == false){
y+=movedir*move_speed;
}

//checks if it has reached the edges of the room, in which case it stops and changes direction
if( (y <=64 or y>=704)and stop_state == false){
    stop_state = true; // it stops
    alarm[1] = 30;//it stays still for "stop_time"

    
}