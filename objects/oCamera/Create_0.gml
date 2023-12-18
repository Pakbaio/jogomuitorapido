resolution_width = 1280;
resolution_height = 720;
resolution_scale = 5;

view_target = oPlayer; // a camera segue esse objeto 
view_speed = 1; // diminua caso queira uma camera mais lerda 

global.width = resolution_width / resolution_scale
global.height = resolution_height / resolution_scale

window_set_size(global.width * resolution_scale,global.height * resolution_scale)
surface_resize(application_surface,global.width * resolution_scale,global.height * resolution_scale)

alarm[0] = 1;
