y+=k;
if(waiting_state ==false){
    k++;
    if(k >= max_vspeed){waiting_state = true;} 
        /*it seit it to "true" even tho the object isnt thechincally "waiting" anymore.
        this is made so that it stops increasing the acceleration */
}