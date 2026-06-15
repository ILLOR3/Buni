//custom function that return whether or not the object is at the end of it's designed path
function isOnEdge(){
    if( y <=min_yPos or y>=max_yPos){return true; }
    return false;
}
//Values based on difficulty selected
switch(global.difficulty)
{
    case Difficulty.EASY:
		attack_cooldown = 460;
        break_cooldown = 50;
		move_speed = 3;
        break;

    case Difficulty.NORMAL:
		attack_cooldown = 400;
        break_cooldown = 40;
		move_speed = 3.5;
        break;

    case Difficulty.HARD:
		attack_cooldown = 340;
        break_cooldown = 35;
		move_speed = 4;
        break;
}



//doesnt have "obj_hazardParent" as a harent cuz it doesnt have a hitbox itself

// sets the shoots direction accordingly
if (x > room_width / 2){
    //shootdir is 1 by default
shootDir = -1;
}

alarm[0] = attack_cooldown;
alarm[1] = break_cooldown;
min_yPos = 64;
max_yPos = 704;
alarm[1]  =30;
stop_state = true;
toShoot = false;

movedir = choose( 1 , -1 )