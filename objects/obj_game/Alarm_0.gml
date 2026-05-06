fallingHazard_choiche = irandom_range(0, 3);

  if(fallingHazard_choiche == 0 or fallingHazard_choiche == 3) {
        instance_create_layer(random_range(200 , 1200) , 0 , "Instances_Collectibles" ,obj_fallingHazard);
        show_debug_message("random");
}
if (fallingHazard_choiche == 1){
        instance_create_layer(obj_player.x , 0 , "Instances_Collectibles" ,obj_fallingHazard);
        show_debug_message("precise");
}
if(fallingHazard_choiche == 2){
        instance_create_layer(obj_player.x + obj_player.xspd, 0 , "Instances_Collectibles" ,obj_fallingHazard);
        show_debug_message("predict");
}


alarm[0] = 200;