//inputs
getControls();

//X movement
	moveDIr = rightKey - leftKey;

	//get xspd
	xspd = moveDIr * moveSpeed;

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
	


//Y movement
		//gravity
		yspd += grav;
	
		//cap falling speed
		if yspd > termVel {yspd = termVel;};
	
		//Jump
		if (jumpKeyPressed and place_meeting( x , y +1 , obj_wall)){
			yspd = jspd;
		}
	
	
	//Y collisions
	var _subPixel = 0.5;
	if place_meeting( x , y + yspd , obj_wall){
		//scoot up to the wall precisely
		var _pixelCheck = _subPixel * sign (yspd);
		while !place_meeting( x , y + _pixelCheck , obj_wall){
		y += _pixelCheck;
		}
		//set yspd to 0 to collide
		yspd = 0;
	}

//move
y += yspd;