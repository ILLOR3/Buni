instance_create_layer( random_range(64 , 1536) , random_range(160, 768), "Instances_Collectibles", obj_collectible);
obj_game.tot_points++;
obj_player.stamina_boost = collectibleStaminaBoost;
audio_play_sound(snd_coin , 0 , false , 1 , 0 , random_range(0.8 , 1.2));