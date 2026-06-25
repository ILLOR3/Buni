//custom functions for player
function setOnGround( _val = true){
    if (_val == true){
        onGround  =true;
        coyoteHangTimer = coyoteHangFrames;
    }else{
        onGround = false;
        myFloorPlat = noone;
        coyoteHangTimer = 0;
    }
}

//control setup
controlsSetup();


//sprites
idleSpr = spr_player_idle;
walkSpr = spr_player_walk;
runSpr = spr_player_run;
jumpSpr = spr_player_jump;

maskSpr = spr_player_idle;



//movement
    face = 1;    
    
	moveDir  =  0; 
    runType = 0;
    moveSpeed [0] = 8;
    moveSpeed[1] = 14;
	yspd = 0;
	xspd = 0;

    xspdBoost = 0;


//stamina
max_stamina = 100;
display_stamina = 100;

fatigued_timer = 120;
recovery_stamina_timer = 200;

fatigued = false;
stamina_regen_index = 0;
stamina_regen[0] = 0; //no stamina regen while fatigued
stamina_regen[1] = 0.15; //slower regeneration if recovering
stamina_regen[2] = 0.25; //normal max regeneration
stamina_regen[3] = 1; //extra

stamina_boost = 0;

//jumping
	grav = 1.8;
	termVel  = 15 ;
	
    jumpMax = 2; //max amount of jumps the player can make
    jumpCount = 0; //jump counter
    jumpHoldTimer = 0;
    onGround = true;

    jumpHoldFrames[0] = 10; //frames a jump can last
    jspd[0] = -18; 

    jumpHoldFrames[1] = 8; //frames a jump can last
    jspd[1] = -16; 
        
    //Coyote time
        //Hang time
        coyoteHangFrames = 4;
        coyoteHangTimer = 0;
    
        //jump buffer time
        coyoteJumpFrames = 7;
        coyoteJumpTimer = 0;
    
//moving platforms
myFloorPlat = noone;
movePlatXspd = 0;
