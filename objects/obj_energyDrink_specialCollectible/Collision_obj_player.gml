// Inherit the parent event
event_inherited();
obj_player.stamina_boost = 12;
obj_player.xspdBoost = speedBoost;;

//plays sound if collected
audio_play_sound(snd_faccheGlu , 0 , false , global.volume_sfx , 0 , random_range(0.8 , 1.2));