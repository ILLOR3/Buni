//Values based on difficulty selected
switch(global.difficulty)
{
    case Difficulty.EASY:
        cooldown_timer = 600;
        break;

    case Difficulty.NORMAL:
        cooldown_timer = 50;
        break;

    case Difficulty.HARD:
        cooldown_timer = 400;  
        break;
}


function chooseStartingPoints(){
   var walls = [1 ,2 , 3 , 4];
    array_shuffle_manual(walls);
    switch (walls[0]) {
        case 1:
            point1x =0;
            point1y = random_range(0,room_height);
            break;
        
        case 2:
            point1x =random_range(0,room_width);
            point1y =0;
            break;
        
        case 3:
            point1x =room_width;
            point1y = random_range(0,room_height);
            break;
        
        case 4:
            point1x =random_range(0,room_width)
            point1y = room_height
            break;
    	
    }
    
    //secont point
        switch (walls[1]) {
        case 1:
            point2x =0;
            point2y = random_range(0,room_height);
            break;
        
        case 2:
            point2x =random_range(0,room_width);
            point2y =0;
            break;
        
        case 3:
            point2x =room_width;
            point2y = random_range(0,room_height);
            break;
        
        case 4:
            point2x =random_range(0,room_width)
            point2y = room_height
            break;
    	
    }
}
alarm[0] = cooldown_timer;
