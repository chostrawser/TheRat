/// @description ui screens
if(obj_controller.ui_title == true)
	draw_sprite(spr_ui_title, 0, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));	
	
else if(obj_controller.ui_win == true)
	draw_sprite(spr_ui_win, 0, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));	
	
else if(obj_controller.ui_lose == true)
	draw_sprite(spr_ui_lose, 0, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));	
