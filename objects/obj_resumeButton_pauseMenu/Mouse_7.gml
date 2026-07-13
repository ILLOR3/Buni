global.paused = false;
instance_activate_all();

if (instance_exists(owner.btn_resume))   instance_destroy(owner.btn_resume);
if (instance_exists(owner.btn_settings)) instance_destroy(owner.btn_settings);
if (instance_exists(owner.btn_mainMenu)) instance_destroy(owner.btn_mainMenu);

if (sprite_exists(owner.frozen_sprite)) sprite_delete(owner.frozen_sprite);
owner.frozen_sprite = -1;