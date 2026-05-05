
if(image_index != 15){
    image_index++;
}else if(holding == false){
    holding = true;
    alarm[1] = hold_timer; //wait time
}
if(image_index ==21){
    instance_destroy();
}