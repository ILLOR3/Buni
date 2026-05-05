
if(hazard_spawn_index <array_length(hazard_list)){
    
    var haz =hazard_list[hazard_spawn_index];
    
    instance_create_layer(haz.xPos,haz.yPos,haz._layer, haz.hazard);//spawns a random hazard in it's set position
    hazard_spawn_index++;
        
}
alarm[1] = 540; //resets the cooldown