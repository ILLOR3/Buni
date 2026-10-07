if(!panic){
    counter++;
    if(counter ==2){
        // random value, 1 in 100
        if (irandom_range(1 , 100) == 67){
            chaseMode = true;
        }
    }
        if(!chaseMode and counter == 2 or counter == 7 ){
            game_end()
        }
    buttonLabel = sheisee[counter];
    if(chaseMode){
        panic = true;
         panic_timer = panic_duration;
         // Immediately launch away from mouse
         var dir = point_direction(mouse_x, mouse_y, x, y);
         vx = lengthdir_x(panic_speed, dir);
         vy = lengthdir_y(panic_speed, dir);
         }
    }