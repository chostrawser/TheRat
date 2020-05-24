/// @description 
if(distance_to_object(obj_pl1)<=8) && (keyboard_check(ord("D"))) && (obj_pl1.hasBasementKey == true)
{
	obj_pl1.x = obj_door_basement_1.x;
	obj_pl1.y = obj_door_basement_1.y + 64;
}

else if(distance_to_object(obj_pl1)<=8) && (keyboard_check(ord("D"))) && (obj_pl1.hasBasementKey == false)
	txtbox = 1;
	
if(distance_to_object(obj_pl1)>8) && (obj_pl1.hasBasementKey == false)
	txtbox = 0;