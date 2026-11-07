death_timer--;

if(death_timer <=90 and image_index = 0){
    image_index = 1;
    //play death sound
    audio_play_sound(snd_death, 1 , 0 , global.volume_music , 0 , 1);
    if(instance_exists(obj_deathHandler)){
        obj_deathHandler.fadeOut = true;
    }
}
if(death_timer < 0){
    for(var i = 0; i<nPetals; i++){
        instance_create_layer( x , y , "Instances_top" , obj_heartPetal);
    }
    instance_destroy()
}

