/// @description win and loss

if(obj_pl1.healthPt <= 0)		
{//player dies
	gameLost = true;
	ui_lose = true;
}


if(obj_pl1.x <= 50) && (obj_pl1.hasSkullKey == true)
{//player wins
	gameWon = true;	
	ui_win = true;
}

if(ui_title == true) || (ui_win == true) || (ui_lose == true)
	ui_check = true;
	
else
	ui_check = false;

if(gameWon == true) || (gameLost == true)
{
	instance_destroy(obj_rat_thing);
	obj_gui.spawnCap = 0;
	obj_pl1.hsp = 0;
	obj_pl1.vsp = 0;
}
