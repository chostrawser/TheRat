/// @description 

key_right = keyboard_check(ord("D"));
key_left = -keyboard_check(ord("A"));
key_up = -keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

//calculate movement
hmove = key_left + key_right;
hsp = hmove * movespeed;
vmove = key_up + key_down;
vsp = vmove * movespeed;

if (hsp<>0)
	vsp = 0;

if (vsp<>0)
	hsp =0;


//horizontal collision
if (place_meeting(x+hsp,y,obj_collision))
{
	while (!place_meeting(x+sign(hsp),y,obj_collision))
	{
	x += sign(hsp);
	}
	hsp = 0;
}

// Verticle collision
if (place_meeting(x,y+vsp,obj_collision))
{
	while (!place_meeting(x,y+sign(vsp),obj_collision))
	{
	y += sign(vsp);
	}
	vsp = 0;
}

// set player facing

if(mouse_x >= x)
{
	if (!instance_exists(obj_bullet))
		image_index = 0;

	else if (sprite_exists(obj_bullet))
		image_index = 2;
}
else
{
	if (!instance_exists(obj_bullet))
		image_index = 1;

	else
		image_index = 3;
}


// resolve movement
x += hsp;
y += vsp;

//resolve shots
if(reload == true) && (reloadBuffer > 0)
	reloadBuffer--;	

else if(reload == true) && (reloadBuffer <= 0)
{
	shots = 5;
	reloadBuffer = 20;
	reload = false;
}

if(shots < 0)
	shots = 0;
