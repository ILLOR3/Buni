//Values based on difficulty selected
switch(global.difficulty)
{
    case Difficulty.EASY:
		attack_cooldown = 460;
		move_speed = 2.8;
        break;

    case Difficulty.NORMAL:
		attack_cooldown = 400;
		move_speed = 3;
        break;

    case Difficulty.HARD:
		attack_cooldown = 340;
		move_speed = 3.2;
        break;
}



//doesnt have "obj_hazardParent" as a harent cuz it doesnt have a hitbox itself

//switches to turned around frame if not on x frame and sets the shoots direction accordingly
if( x !=0){
image_index = 1;
shootDir = -1;
}
alarm[0] = attack_cooldown;


min_yPos = 64;
max_yPos = 704;
alarm[1]  =30;
stop_state = true;



movedir = irandom_range(0 , 1);
if (movedir == 0){movedir = -1};