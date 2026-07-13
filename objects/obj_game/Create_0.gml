randomize();

//Values based on difficulty selected
switch(global.difficulty)
{
    case Difficulty.EASY:
		fallingHazard_timer = 100;
		generalHazard_timer = 560;
        break;

    case Difficulty.NORMAL:
		fallingHazard_timer = 60;
		generalHazard_timer = 520;
        break;

    case Difficulty.HARD:
		fallingHazard_timer = 40 ;
		generalHazard_timer = 490;
        break;
}

//selects hazards based off of the selected map
switch(global.selectedMap){
        case Room_game_original:
            hazard_list  = [
    { 
        hazard: obj_sawHazard_preview,
        xPos: random_range(192 , 1216),
        yPos: 832,
		_layer: "Instances_Hazards"
    },
    {
        hazard: obj_pressureHazard_preview,
        xPos: 448,
        yPos: 256,
		_layer: "Instances_Hazards"
    },
    {
        hazard: obj_pressureHazard_preview,
        xPos: 1152,
        yPos: 256,
		_layer: "Instances_Hazards"
    },
    {
        hazard: obj_pressureHazard_preview,
        xPos: 448,
        yPos: 640,
		_layer: "Instances_Hazards"
    },
     {
        hazard: obj_pressureHazard_preview,
        xPos: 1152,
        yPos: 640,
		_layer: "Instances_Hazards"
    },
	{
	hazard: obj_snailHazard_preview,
	xPos: random_range(60, 1340),
	yPos: random_range(126, 832),
	_layer: "Instances_Collectibles"//its different cuz of the fact that the snail needs to be above walls n shit
	},
	{
	hazard: obj_gunHazard_preview,
	xPos: 32,
	yPos: random_range(70 , 700),
	_layer: "Instances_Hazards"
	},
	{
	hazard: obj_gunHazard_preview,
	xPos: 32,
	yPos: random_range(70 , 700),
	_layer: "Instances_Hazards"
	},
    {
	hazard: obj_gunHazard_preview,
	xPos: 1568,
	yPos: random_range(70 , 700),
	_layer: "Instances_Hazards"
	},
	  {
	hazard: obj_gunHazard_preview,
	xPos: 1568,
	yPos: random_range(70 , 700),
	_layer: "Instances_Hazards"
	}
] ;
        break;
    
     case Room_game_map2:
            hazard_list  = [
    { 
        hazard: obj_sawHazard_preview,
        xPos: random_range(480 , 1120),
        yPos: 832,
		_layer: "Instances_Hazards"
    },
    {
        hazard: obj_pressureHazard_preview,
        xPos: 224,
        yPos: 640,
		_layer: "Instances_Hazards"
    },
    {
        hazard: obj_pressureHazard_preview,
        xPos: 1376,
        yPos: 640,
		_layer: "Instances_Hazards"
    },
    {
        hazard: obj_pressureHazard_preview,
        xPos: 240,
        yPos: 256,
		_layer: "Instances_Hazards"
    },
     {
        hazard: obj_pressureHazard_preview,
        xPos: 1360,
        yPos: 256,
		_layer: "Instances_Hazards"
    },
	{
	hazard: obj_snailHazard_preview,
	xPos: random_range(60, 1340),
	yPos: random_range(126, 832),
	_layer: "Instances_Collectibles"//its different cuz of the fact that the snail needs to be above walls n shit
	},
	{
	hazard: obj_gunHazard_preview,
	xPos: 32,
	yPos: random_range(70 , 700),
	_layer: "Instances_Hazards"
	},
	{
	hazard: obj_gunHazard_preview,
	xPos: 32,
	yPos: random_range(70 , 700),
	_layer: "Instances_Hazards"
	},
    {
	hazard: obj_gunHazard_preview,
	xPos: 1568,
	yPos: random_range(70 , 700),
	_layer: "Instances_Hazards"
	},
	  {
	hazard: obj_gunHazard_preview,
	xPos: 1568,
	yPos: random_range(70 , 700),
	_layer: "Instances_Hazards"
	}
] ;
        break;
    
     case Room_game_map3:
            hazard_list  = [
    { 
        hazard: obj_sawHazard_preview,
        xPos: random_range(192 , 1216),
        yPos: 832,
		_layer: "Instances_Hazards"
    },
    {
        hazard: obj_pressureHazard_preview,
        xPos: 448,
        yPos: 256,
		_layer: "Instances_Hazards"
    },
    {
        hazard: obj_pressureHazard_preview,
        xPos: 1152,
        yPos: 256,
		_layer: "Instances_Hazards"
    },
    {
        hazard: obj_pressureHazard_preview,
        xPos: 448,
        yPos: 640,
		_layer: "Instances_Hazards"
    },
     {
        hazard: obj_pressureHazard_preview,
        xPos: 1152,
        yPos: 640,
		_layer: "Instances_Hazards"
    },
	{
	hazard: obj_snailHazard_preview,
	xPos: random_range(60, 1340),
	yPos: random_range(126, 832),
	_layer: "Instances_Collectibles"//its different cuz of the fact that the snail needs to be above walls n shit
	},
	{
	hazard: obj_gunHazard_preview,
	xPos: 32,
	yPos: random_range(70 , 700),
	_layer: "Instances_Hazards"
	},
	{
	hazard: obj_gunHazard_preview,
	xPos: 32,
	yPos: random_range(70 , 700),
	_layer: "Instances_Hazards"
	},
    {
	hazard: obj_gunHazard_preview,
	xPos: 1568,
	yPos: random_range(70 , 700),
	_layer: "Instances_Hazards"
	},
	  {
	hazard: obj_gunHazard_preview,
	xPos: 1568,
	yPos: random_range(70 , 700),
	_layer: "Instances_Hazards"
	}
] ;
        break;
    
}


tot_points = 0; 
alarm[0] = fallingHazard_timer + 100; // the initial hazard appears a little more late
fallingHazard_choiche = 0;//this is either * 0  = it falls randomly * 1 = it falls on the player  * 2 = it predicts the player movement */

alarm[1] = generalHazard_timer; //general alarm for spawning a hazard




array_shuffle_manual(hazard_list);
hazard_spawn_index = 0;
for (var i = 0; i < array_length(hazard_list); i++) {
    show_debug_message(string(hazard_list[i].hazard));
}

//spacial collectible timer
alarm[2] = specialCollectible_timer; //15 seconds