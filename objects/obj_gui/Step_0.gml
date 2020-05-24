/// @description rat thing spawns
spawnBuffer--;

if(spawnBuffer <= 0)
{	
	if(instance_number(obj_rat_thing) < spawnCap)
		scr_rat_thing_spawn();
}	