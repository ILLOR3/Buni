//inputs
getControls();

//temporary reset
if (keyboard_check(ord("R"))){
    room_goto(Room_start)
}

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



	//Y collisions and movement____________________________________________________________________________________________________________________________________________________

    
    	//cap falling speed
		if yspd > termVel {yspd = termVel;};
	

//floor Y collision
//check for solid and semisolid platforms under me
var _clampYspd = max( 0 ,yspd);

var _list  = ds_list_create();//create a DS list to store all of the objects we run into
var _array = array_create(0);
array_push(_array , obj_wall , obj_ssWall);

//do the actual check and add objects to list
var _listSize = instance_place_list( x , y + 1 + _clampYspd + termVel , _array , _list , false);

//loop through the colliding instances and only return one if its top is below the player

for(var i = 0; i < _listSize; i++){
    //get an instance of obj_wall or obj_ssWall
      var _listInst = ds_list_find_value( _list , i ); // or just _list[i]
      
      //avoid magnetism
      if(  _listInst.yspd <= yspd or instance_exists(myFloorPlat) and (_listInst.yspd > 0 or place_meeting(x , y + 1 + _clampYspd , _listInst))){
      
      //return a  solid or ss wall that are below the player
      if (_listInst.object_index == obj_wall or object_is_ancestor( _listInst.object_index , obj_wall) or floor(bbox_bottom) <= ceil(_listInst.bbox_top - _listInst.yspd) ){
          //return the "highest" wall object
          if (!instance_exists(myFloorPlat) or _listInst.bbox_top + _listInst.yspd or _listInst.bbox_top + _listInst.yspd <= bbox_bottom){ 
              myFloorPlat = _listInst; 
          }
      }
  }
}
//destroy the DS list to avoid memory leak
ds_list_destroy(_list);



//one last check to make sure the floor platform is actually below us
if (instance_exists(myFloorPlat) and !place_meeting( x , y + termVel , myFloorPlat)){
    myFloorPlat = noone;
}

//land on the ground platform if there is one
if (instance_exists(myFloorPlat)){
    //scoot up to our wall precisely
    var _subPixel = 0.5;
    while (!place_meeting( x , y + _subPixel , myFloorPlat) and !place_meeting( x , y , obj_wall)){ 
        y += _subPixel;
    }
    //make sure we don't end up below the top of a semisolid
    if ( myFloorPlat.object_index == obj_ssWall or object_is_ancestor( myFloorPlat.object_index , obj_ssWall)){
        while (place_meeting( x, y , myFloorPlat)){
            y -= _subPixel;
        }
    }
    //floor the y variable
    y = floor(y);
    
    //collide with the ground
    yspd = 0;
    setOnGround(true);
}

//move
y += yspd;


//final moving platform collision and movement _____________________________________________________________

    // X - movePlatXspd and collisions
    movePlatXspd = 0;
    if (instance_exists(myFloorPlat)){movePlatXspd = myFloorPlat.xspd; };
    
    //move with movePlatXspd
    if (place_meeting( x + movePlatXspd , y , obj_wall)){
        //scoot up to the wall precisely
        var _subPixel = 0.5;
        var _pixelCheck = _subPixel * sign(movePlatXspd);
        
        while (!place_meeting(x + _pixelCheck , y , obj_wall)){
            x += _pixelCheck
        }
        // set movePlatXspd to 0 to finisg collision
        movePlatXspd = 0;
    }
    //move
    x += movePlatXspd;
        

    //Y - snap myself ti myFloorPlat if it's moving vertically
    if (instance_exists(myFloorPlat) and (myFloorPlat.yspd != 0 
        or myFloorPlat.object_index == obj_ssMoveWall 
        or object_is_ancestor(myFloorPlat.object_index , obj_ssMoveWall)
        )
      ){
        //snap to the top of the floor platform
        if (!place_meeting( x , myFloorPlat.bbox_top , obj_wall) and (myFloorPlat.bbox_top >= bbox_bottom - termVel) ){
            y = myFloorPlat.bbox_top;
        }
        
        //going up into a solid wall while on a  ss platform
        if( myFloorPlat.yspd < 0 and place_meeting(x , y + myFloorPlat.yspd , obj_wall)){
            //get pushed down through the ssPlatform
            if(myFloorPlat.object_index == obj_ssWall  or  object_is_ancestor( myFloorPlat.object_index , obj_ssWall)){
                //Get pushed down
                var _subpixel = 0.25;
                while (place_meeting( x , y + myFloorPlat.yspd , obj_wall)){y +=_subPixel; };
                
                //if we got pushed into a solid wall while going down, push ourselves back out
                 while (place_meeting( x , y , obj_wall)){y -=_subPixel; };
                
                //round y 
                y = round(y);
            }
            
            //cancel the myFloorPlat variable
            setOnGround(false);
        }
    }
    



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
    //mask_index = maskSpr;=







//Stamina for the player

//if the player runs and there is stamina , the available stamina decreases
if (runType >=1 and display_stamina >0 and moveDir != 0)
 {display_stamina --;}

/*if the player tries to run but there is no more stamina available, it enters the "fatigue" state, 
where it won't be able to regen stamina nor sprint for a certain amount of time*/
if(runType >= 1 and display_stamina <=0 and fatigued == false ) {
        fatigued = true;
        stamina_regen_index = 0;
    alarm[0] = fatigued_timer;
}

//if the player isn't sprinting and isn't fatigued it regens stamina at the highest pace 
if(runType == 0 and !fatigued){
    stamina_regen_index = 2;}

//regen the stamina (Less if recovering, none if fatigued)
display_stamina += stamina_regen[stamina_regen_index] + stamina_boost;
if(stamina_boost > 0){
 stamina_boost = max(stamina_boost - 0.75, 0)
}

//sets the stamina to its max amount to prevent overlapping
if(display_stamina >= max_stamina){
    display_stamina = max_stamina;
}

if(display_stamina < 0){
    display_stamina = 0;
}

