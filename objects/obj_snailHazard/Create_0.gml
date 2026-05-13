//Values based on difficulty selected
switch(global.difficulty)
{
    case Difficulty.EASY:
		follow_speed =0.0015;
        break;

    case Difficulty.NORMAL:
		follow_speed =0.002;
        break;

    case Difficulty.HARD:
		follow_speed =0.004;
        break;
}

/*if(instance_exists(obj_player)){
	dir = point_direction(  x , y , obj_player.x , obj_player.y);
}
*/