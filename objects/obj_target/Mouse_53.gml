/// @description
x = mouse_x;
y = mouse_y;

if (mouse_x > obj_pl1.x)
	instance_create_layer(obj_pl1.x + 16, obj_pl1.y-38, "player", obj_bullet);
	
else
	instance_create_layer(obj_pl1.x - 16, obj_pl1.y-38, "player", obj_bullet);

