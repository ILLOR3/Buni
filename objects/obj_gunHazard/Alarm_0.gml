var Ineedmorebullets =instance_create_layer( x , y , "Instances_Collectibles" , obj_bulletHazard); // its in "collectiles" cuz it need to be fully visible
Ineedmorebullets.move_dir = shootDir;
alarm[0] = attack_cooldown;