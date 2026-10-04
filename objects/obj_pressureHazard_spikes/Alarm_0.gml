//resumes the sprite animation but backwards
image_direction = -1;
holding = false;
//does one frame of the animation manually so it unlocks the animation code from not running
image_index--;
audio_play_sound(snd_trapIn , 0 , false , 1 , 0 , random_range(0.8 , 1.2));