//custom functions for player
function setOnGround( _val = true){
    if (_val == true){
        onGround  =true;
        coyoteHangTimer = coyoteHangFrames;
    }else{
        onGround = false;
        coyoteHangTimer = 0;
    }
    
    
}

//control setup
controlsSetup();
//movement
	moveDIr  =  0;
    moveSpeed  = 8;
	yspd = 0;
	xspd = 0;

//jumping
	grav = 1.8;
	termVel  = 15 ;
	
    jumpMax = 1; //max amount of jumps the player can make
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
