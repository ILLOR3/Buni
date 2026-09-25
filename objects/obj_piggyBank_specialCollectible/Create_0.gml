// Inherit the parent event
event_inherited();




totPoints = 3;



halfAnimationFrame = 8;
lastFrame = 17;


animFrame = 0;//tracks current frame of the animation
animTimer = 0;
animInterval = 3; //"step" interval between each frame of the animation

animating = false;


function coinAnimation (){
animating = true;
animFrame = 0;
animTimer = 0;    
}
