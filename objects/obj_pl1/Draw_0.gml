/// @description muzzle flashes

draw_self();

if(mouse_check_button(mb_left)) && (reload == false)
{
	if (mouse_x > x)
		draw_sprite(spr_muzzle_flash, 0, x+16, y-38);
	
	else
		draw_sprite(spr_muzzle_flash, 0, x-16, y-38);
}

else if(reload == true)
{
	draw_text(x-24, y-72, "Reload");
	
	if(reloadBuffer <= 25) && (reloadBuffer > 20)
		draw_sprite(spr_reload_gui, 0, x, y-48)
	
	else if(reloadBuffer <=20) && (reloadBuffer > 15)
		draw_sprite(spr_reload_gui, 1, x, y-48)
		
	else if(reloadBuffer <=15) && (reloadBuffer > 10)
		draw_sprite(spr_reload_gui, 2, x, y-48)
		
	else if(reloadBuffer <=10) && (reloadBuffer > 5)
		draw_sprite(spr_reload_gui, 3, x, y-48)
	
	else if(reloadBuffer <= 5)
		draw_sprite(spr_reload_gui, 4, x, y-48)
}