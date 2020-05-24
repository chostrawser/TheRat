/// @description attack player

if(isDead == false)
{
	animBuffer--;
	if(animBuffer <= 0)
	{
		chompUp = !chompUp;
		obj_pl1.healthPt -= 1;
		
		if(obj_pl1.hsp >= 0)
			obj_pl1.image_index = 4;
		
		else
			obj_pl1.image_index = 5;
			
		animBuffer = 5;
	}
}