if(fadeOut == true){
    spriteAlpha -= 0.02;
}
if(!fadeOut){shader_set(Shader_fullWhite);}
draw_sprite_ext(_playerIndex , _playerFrame, _playerXpos, _playerYpos, 1 , 1 , 0 , c_white , spriteAlpha);
shader_reset();

draw_sprite_ext(_killer.sprite_index, _killerFrame ,_killerXpos , _killerYpos,1,1,0,c_red,spriteAlpha);
