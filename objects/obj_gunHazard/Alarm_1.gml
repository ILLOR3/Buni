//finised pause, can begin moving
stop_state = false;
//changes direction if on the edges
if (isOnEdge()){
movedir *= -1;
}

if (toShoot) {var Ineedmorebullets =instance_create_layer( x , y , "Instances_Collectibles" , obj_bulletHazard); // its in "collectiles" cuz it need to be fully visible
Ineedmorebullets.move_dir = shootDir;
alarm[0] = attack_cooldown;
    toShoot = false;
}