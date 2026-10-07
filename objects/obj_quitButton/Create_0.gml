// Inherit the parent event
event_inherited();
counter = 0;
sheisee = ["Quit" , "Are you sure?" ,"Hell no you aint quittin bitch" ,"Why you wanna quit dud" , "you really wanna quit?" , "Aight man, thats fine at this point" , "Quit" , "."]
buttonLabel = sheisee[counter];
chaseMode = false;


vx = 4;
vy = 3;

// Normal mouse repulsion
mouse_radius = 350;
mouse_force = 0.35;

_friction = 0.995;
max_speed = 12;

// Panic
panic = false;
panic_timer = 0;

panic_duration = 60; // 1 second at 60 FPS
panic_speed = 30;
panic_acceleration = 0.8;