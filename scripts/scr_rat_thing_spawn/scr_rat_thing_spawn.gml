randomize();

if(actSpawn == -1)
	actSpawn = instance_find(obj_rat_thing_spawn, irandom_range(0,7));

actSpawn.image_speed = 1;
if(actSpawn.image_index == 4)
{
	instance_create_layer(actSpawn.x, actSpawn.y + 16, "player", obj_rat_thing);
	actSpawn.image_speed = 0;
	actSpawn.image_index  = 0;
	actSpawn = -1;
	spawnBuffer = 35;
}