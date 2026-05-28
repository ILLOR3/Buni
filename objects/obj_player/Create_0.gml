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
	
    jumpMax = 2; //max amount of jumps the player can make
    jumpCount = 0; //jump counter
    jumpHoldTimer = 0;


    jumpHoldFrames[0] = 10; //frames a jump can last
    jspd[0] = -18; 

    jumpHoldFrames[1] = 8; //frames a jump can last
    jspd[1] = -16; 
        


        
    onGround = true;