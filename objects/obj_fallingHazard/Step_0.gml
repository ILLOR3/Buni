//skips everything if the game is paused
if (global.paused) exit;
    
y+=k;
if(waiting_state ==false){
    
    if(k < max_vspeed){
        k++;
    }else {
        k = max_vspeed;
    } 
}