//Values based on difficulty selected
switch(global.difficulty)
{
    case Difficulty.EASY: 
        decreaseSpawnTime = 45;
        increaseSurvivalTime = 35;
        playerStaminaBoost = 5; 
        break;

    case Difficulty.NORMAL:
		decreaseSpawnTime = 45;
        increaseSurvivalTime = 30;
        playerStaminaBoost = 4; 
        break;

    case Difficulty.HARD:
        decreaseSpawnTime = 40;
        increaseSurvivalTime = 30;
        playerStaminaBoost = 3.5; 
        break;
}
