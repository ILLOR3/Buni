//inputs
getControls();

//X movement
	moveDir = rightKey - leftKey;
    //get the face
    if (moveDir != 0){face = moveDir};

	//get xspd
    runType = runKey;
	xspd = moveDir * moveSpeed[runType];

	//x collisions
	var _subPixel = 0.5;
	if place_meeting(x + xspd , y , obj_wall){
		//scoot up to wall precisely
		var _pixelCheck = _subPixel * sign(xspd);
		while!place_meeting( x + _pixelCheck , y , obj_wall){
			x += _pixelCheck;
		}
	
		//set xspd to 0 to "collide"
		xspd = 0;
	}
	//move
	x += xspd;
	

/*set sprite based on direction
if(moveDir == 1){
    sprite_index = asset_get_index(spr_player_right);
}else if (moveDir == -1){
    sprite_index = asset_get_index(spr_player_left);
}else{ 
    sprite_index = asset_get_index(spr_player_idle);
}
*/


//__________________________________________________________________________________________________________________________________________________________________________________________

//Y movement
		//gravity
if( coyoteHangTimer > 0){
    //count down the timer
    coyoteHangTimer--;
}else{
    //apply gravty
    yspd += grav;
    //we're no longer on the ground
    setOnGround(false)
}

	
	


        //reset / prepare jumping variables
if (onGround){  
    jumpCount = 0; //resets jumps once th player touches the ground
    //jumpHoldTimer = 0;
    coyoteJumpTimer = coyoteJumpFrames
}else{ //if the player is in the air, make sure they can't do an extra jump
        coyoteJumpTimer--;
        if(jumpCount ==0 and coyoteJumpTimer <= 0){
            jumpCount =1;
        }
  
}
    
        
		//Initiate the jump
	if (jumpKeyBuffered and jumpCount < jumpMax){ //instead of looking for "jumpkeyPRESSED" it looks for "jumpKeyBUFFERED"
        //reset the buffer 
        jumpKeyBuffered = false;
        jumpKeyBufferTimer = 0;
                   
         //increase the number of performed jumps 
        jumpCount ++;
                   
        //set the jumpHoldTimer
        jumpHoldTimer = jumpHoldFrames[jumpCount-1]; //its -1 because we already add a jumpCount (the 1st timer in the array has index 0)
        //tell ourselves we're no longer on the ground
        setOnGround(false);
        coyoteJumpTimer = 0; //sus line
    }

//Cut off the jump by releasing the jump button
if (!jumpKey) {
    jumpHoldTimer = 0;
}
//jump based on the timer/holding of the button
if(jumpHoldTimer >0){
    yspd = jspd[jumpCount -1]; //its -1 because we already add a jumpCount (the 1st timer in the array has index 0)
    
    //count down the timer
    jumpHoldTimer--;
    
}







	//Y collisions and movement

    
    	//cap falling speed
		if yspd > termVel {yspd = termVel;};
	
        //Collisions
    	var _subPixel = 0.5;
    	if place_meeting( x , y + yspd , obj_wall){
    		//scoots up to the wall precisely
    		var _pixelCheck = _subPixel * sign (yspd);
    		while !place_meeting( x , y + _pixelCheck , obj_wall){ y += _pixelCheck; };
            
            //"Bonk" code (that doesn't make the player idle under a wall if the jump into it from below
                if(yspd < 0){
                    jumpHoldTimer = 0;
                }
    		//set yspd to 0 to collide
    		yspd = 0;
    	}
    //set if the player is on the ground
    if (yspd >= 0 and place_meeting( x , y +1 , obj_wall)){
        setOnGround( true);
    }
//move
y += yspd;





//sprite control
//walking
if (abs(xspd) > 0){ sprite_index = walkSpr; };
//running
if(runType == 1){ sprite_index = runSpr; };         // can also be done like this;      if(abs(xspd) >= moveSpeed[1] ){ sprite_index = runSpr; };   
//not moving
if (xspd == 0){ sprite_index = idleSpr; };
//in the air
if (!onGround){ sprite_index = jumpSpr; };

    //set the collision mask
    mask_index = maskSpr;