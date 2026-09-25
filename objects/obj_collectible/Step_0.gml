if(image_index != lastframe){
    image_index++;
}else{
    image_index = 0;
}
    

//floating
floatTimer += floatSpeed;
y = floatBaseY + sin(floatTimer) * floatAmplitude;