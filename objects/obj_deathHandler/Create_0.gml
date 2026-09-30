
_killerXpos = global.killer_x;
_killerYpos = global.killer_y; 
_killer = global.killer
_killerFrame = global.obstacleFrame;



_playerFrame = global.playerFrame;
 _playerIndex = global.playerIndex;
_playerXpos = global.death_xpos;
_playerYpos = global.death_ypos;

fadeOut = false;
spriteAlpha = 1;

instance_create_layer(_playerXpos , _playerYpos -30, "Instances_top" , obj_deathAnimaiton);

