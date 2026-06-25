instance_destroy();
//if coolcolectible exists, picking up a normal collectible increases it survival time.
//if it does not exist, lowers the timer of its spawn

if(instance_exists(obj_specialCollectible_parent)){
obj_specialCollectible_parent .bonus_survivalTime +=increaseSurvivalTime;
      if (instance_exists(obj_piggyBank_specialCollectible)){
        obj_specialCollectible_parent.totPoints += 2;
      }
} else{
obj_game.alarm[2] -=decreaseSpawnTime;
}