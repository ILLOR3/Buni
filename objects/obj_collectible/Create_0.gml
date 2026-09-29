//Values based on difficulty selected
switch(global.difficulty)
{
    case Difficulty.EASY: 
        decreaseSpawnTime = 40;
        increaseSurvivalTime = 10;
       collectibleStaminaBoost = 4.5; 
        break;

    case Difficulty.NORMAL:
		decreaseSpawnTime = 60;
        increaseSurvivalTime = 8;
        collectibleStaminaBoost = 4; 
        break;

    case Difficulty.HARD:
        decreaseSpawnTime = 80;
        increaseSurvivalTime = 10;
       collectibleStaminaBoost = 3.5; 
        break;
}

lastframe = 34;

//floating
floatBaseY = y;      // remember the "real" resting position
floatTimer = 0;
floatAmplitude = 6;  // how many pixels up/down
floatSpeed = 0.05;   // how fast it oscillates