instance_destroy();
//if coolcolectible exists, picking up a normal collectible increases it survival time.
//if it does not exist, lowers the timer of its spawn
if(instance_exists(obj_coolCollectible)){
obj_coolCollectible.alarm[0] +=increaseSurvivalTime;
}else{
obj_game.alarm[2] -=decreaseSpawnTime;
}