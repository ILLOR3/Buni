// Define your base (design) resolution
var cam_w = 1600;
var cam_h = 900;

// Create camera and view
camera = camera_create_view(0, 0, cam_w, cam_h);
view_camera[0] = camera;
view_enabled = true;
view_visible[0] = true;

// Stretch the viewport to fill the window
view_wport[0] = window_get_width();
view_hport[0] = window_get_height();

resizeViewport();

//automatic fullscreen 
//window_set_fullscreen(true)