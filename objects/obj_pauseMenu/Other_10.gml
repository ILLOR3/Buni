global.paused = false;
instance_activate_all();

if (instance_exists(btn_resume))   instance_destroy(btn_resume);
if (instance_exists(btn_settings)) instance_destroy(btn_settings);
if (instance_exists(btn_mainMenu)) instance_destroy(btn_mainMenu);

if (sprite_exists(frozen_sprite)) sprite_delete(frozen_sprite);
frozen_sprite = -1;