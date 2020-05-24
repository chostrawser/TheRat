/// @description 

if(isDead == true)						//checking if dead
{
	image_index = 2;
	
	move_towards_point(x, y, 0);
	despawnBuffer--;
	if(despawnBuffer <= 0)
	{
		instance_destroy(id);
	}
}

else
{
	if(distance_to_object(obj_pl1) <= 100) //&& (obj_pl1.x >= camera_get_view_x(0))		//movement
		move_towards_point(obj_pl1.x, obj_pl1.y, .5);
		
	if(x >= 1495) || (x <= 0)
		move_towards_point(obj_door_kitchen.x, obj_door_kitchen.y, .75);
		
	if(obj_pl1.x <= x)						//facing
			image_index = 0;
			
	else 
			image_index = 4;
	
	if(chompUp == true)							//bite animation
	{
		if(obj_pl1.x <= x)						//facing
			image_index = 1;
			
		else 
			image_index = 5;
	}

	else
	{
		if(obj_pl1.x <= x)	
			image_index = 0;
			
		else
			image_index = 4;
	}
}