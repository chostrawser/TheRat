/// @description 

if(isDead == false)
{
	if(obj_pl1.x <= x)						//facing
		image_index = 3;
			
	else 
		image_index = 7;
			
	hitBuffer--;
	if(hitBuffer <= 0)
	{
		hits--;
		hitBuffer = 3;
	}

	if(hits <= 0)
		isDead = true;
}