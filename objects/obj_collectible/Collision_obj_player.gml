instance_destroy();
//if coolcolectible exists, picking up a normal collectible increases it survival time.
//if it does not exist, lowers the timer of its spawn
if(instance_exists(obj_piggyBank_Collectible)){
obj_piggyBank_Collectible.alarm[0] +=increaseSurvivalTime;
obj_piggyBank_Collectible.tot_points += 1;    
}else{
obj_game.alarm[2] -=decreaseSpawnTime;
}