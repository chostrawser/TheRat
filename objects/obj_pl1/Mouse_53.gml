/// @description 
if (mouse_x < x)
	image_index = 3;
	
else
	image_index = 2;

if(reload == false)
{
	if(shots != 0)
		shots --;
		
	else
		reload = true;
}