if (keyboard_check_pressed(vk_escape)) {
    
    if (!global.paused) {
        
       // Take snapshot BEFORE deactivating
        var temp = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
        surface_copy(temp, 0, 0, application_surface);

        if (sprite_exists(frozen_sprite)) sprite_delete(frozen_sprite);
        frozen_sprite = sprite_create_from_surface(temp, 0, 0,
            surface_get_width(temp), surface_get_height(temp),
            false, false, 0, 0);

        surface_free(temp);

        global.paused = true;
        instance_deactivate_all(true); // keep obj_pause_menu alive
        
        
        
        var _x = room_width/2;
        var _y = room_height/2;
        
        
      
        
        btn_resume = instance_create_layer(
          _x, _y - 270,
          "UI",
          obj_resumeButton_pauseMenu,
            {
            buttonLabel: "Resume",
            image_xscale: 3,
            image_yscale: 3
            }
        );
        
         btn_restart = instance_create_layer(
          _x, _y -90,
          "UI",
          obj_restartButton_pauseMenu,
            {
            buttonLabel: "restart",
            image_xscale: 3,
            image_yscale: 3
            }
        );
     
        
        btn_settings = instance_create_layer(
          _x, _y + 90,
          "UI",
          obj_settingsButton_pauseMenu,
            {
            buttonLabel: "Settings",
            image_xscale: 3,
            image_yscale: 3
            }
        );
        
        btn_mainMenu = instance_create_layer(
          _x, _y+ 270,
          "UI",
          obj_changeRoomButton,
            {
               targetRoom: Room_start,
            buttonLabel: "Main menu",
            image_xscale: 3,
            image_yscale: 3
            }
        );
        
          // Let each button know who their owner is so they can report back
        btn_resume.owner   = id;
        btn_settings.owner = id;
        btn_mainMenu.owner     = id;
        btn_restart.owner = id;
        
       
        
    } else {
        
      event_user(0); // call unpause
            
    }
    
}
