/// @description set camera
if(distance_to_object(obj_pl1)<=8) && (obj_controller.ui_check == false)
{
	camera_set_view_target(view_camera[0], obj_bg_hallway_1);
	camera_set_view_pos(view_camera[0], 256, 285);
}