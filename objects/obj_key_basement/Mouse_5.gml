/// @description player collect
if(distance_to_object(obj_pl1) <= 8) && (visible == true)
{
	obj_pl1.hasBasementKey = true;
	visible = false;
}