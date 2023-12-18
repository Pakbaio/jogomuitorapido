camera_set_view_size(view_camera[0],global.width,global.height);

if(instance_exists(view_target)){
	
	var x1 = view_target.x - global.width / 2
	var y1 = view_target.y - global.height / 2
	
	x1 = clamp(x1,0,room_width - global.width)
	y1 = clamp(y1,0,room_height - global.height)
	
	var c_x = camera_get_view_x(view_camera[0])
	var c_y = camera_get_view_y(view_camera[0])
	
	camera_set_view_pos(view_camera[0],lerp(c_x,x1,view_speed),lerp(c_y,y1,view_speed))
}