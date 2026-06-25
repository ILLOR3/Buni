var balls = choose(obj_piggyBank_specialCollectible , obj_energyDrink_specialCollectible )
instance_create_layer( random_range(64 , 1536) , random_range(160, 768), "Instances_Collectibles", balls )

show_debug_message("SPAWNED");
 
