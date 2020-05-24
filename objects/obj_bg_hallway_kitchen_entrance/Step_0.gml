/// @description set camera
if(distance_to_object(obj_pl1)<=8) && (obj_controller.ui_check == false)
{
	camera_set_view_target(view_camera[0], obj_bg_hallway_kitchen_entrance);
	camera_set_view_pos(view_camera[0], 1024, 285);
}