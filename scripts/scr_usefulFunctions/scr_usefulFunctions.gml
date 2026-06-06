function controlsSetup(){
		jumpBufferTime = 10;	//<- amount of "safe frames"
		jumpKeyBuffered = false;
		jumpKeyBufferTimer = 0;
}


function getControls(){
	//directional imputs
		rightKey = keyboard_check(vk_right) + keyboard_check(ord ("D")) ; // +gamepad_button_check(0,gp_padr)
		rightKey = clamp(rightKey , 0  ,1);//<-- this makes it so u can use multiple keys and the variable can only be 1 or 0 . works for left key aswell
		leftKey = keyboard_check(vk_left) + keyboard_check(ord ("A")); // +gamepad_button_check(0,gp_padl)
		leftkey = clamp (leftKey , 0 , 1);
	
	
	
	//action imputs
		jumpKeyPressed  = keyboard_check_pressed( vk_space) + keyboard_check_pressed(ord("W")) + keyboard_check_pressed(vk_up);  // +gamepad_button_check_pressed(0,gp_face1);
		jumpKeyPressed = clamp(jumpKeyPressed , 0 , 1);

		jumpKey = keyboard_check(vk_space) + keyboard_check(ord("W")) + keyboard_check(vk_up);
		jumpKey = clamp(jumpKey , 0 , 1);
			
        runKey = keyboard_check(vk_shift); //more keys to be added here
        runKey = clamp(runKey , 0 , 1);
        //if the player is in the recovery state, it cannor run
        if(obj_player.fatigued){
            runKey = 0;
        }
    
			//Jump key buffering
			/*when jump key is pressed, sets a timer for an X amount of frames where its possible to jump even if not on the ground */
			if(jumpKeyPressed){			
				jumpKeyBufferTimer =jumpBufferTime ;
			}
			
			if (jumpKeyBufferTimer > 0){
				jumpKeyBuffered = true;
				jumpKeyBufferTimer --; //this code executes every frame, so this ticks down from the timer constantly
			}else{
				jumpKeyBuffered = false;
			}
}








//sorts arrays manuall, because the built in function doesnt seem to work
function array_shuffle_manual(_array) { 
    var _len = array_length(_array);
    for (var i = _len - 1; i > 0; i--) {
        var _j = irandom(i); 
        
        var _temp = _array[i];
        _array[i] = _array[_j]; 
        _array[_j] = _temp;     
    }
}