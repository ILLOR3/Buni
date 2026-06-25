//Values based on difficulty selected
switch(global.difficulty)
{
    case Difficulty.EASY: 
        decreaseSpawnTime = 45;
        increaseSurvivalTime = 35;
       collectibleStaminaBoost = 4.5; 
        break;

    case Difficulty.NORMAL:
		decreaseSpawnTime = 45;
        increaseSurvivalTime = 8;
        collectibleStaminaBoost = 4; 
        break;

    case Difficulty.HARD:
        decreaseSpawnTime = 40;
        increaseSurvivalTime = 10;
       collectibleStaminaBoost = 3.5; 
        break;
}
