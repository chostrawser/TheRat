/// @description 
draw_set_color(c_white);

if(obj_controller.ui_title == true)
{
	draw_text(375, 450, "Space to Start. Esc to Quit.");
}

if(obj_controller.ui_check == false)
{
	//object_set_visible(obj_button_START, false);
	//object_set_visible(obj_button_EXIT, false);
	
	//objective
	draw_text(10, 650, "Objective:");

	if(obj_pl1.hasSkullKey == false)
		draw_text(10, 665, "Find the Skull Key");

	else
		draw_text(10, 665, "Escape the House");

	//inventory
	draw_text(350, 716, "Inventory:");

	if(obj_pl1.hasBasementKey == true)
		draw_text(350, 732, "Basement Key");
	
	if(obj_pl1.hasSkullKey == true)
		draw_text(350, 748, "Skull Key");
	
	//stats
	draw_text(350, 650, "Stats:");

	if(obj_pl1.image_index == 4) || (obj_pl1.image_index == 5)
	{
		draw_set_color(c_red);
		draw_text(350, 665, "Health: " + string(obj_pl1.healthPt));
		draw_set_color(c_white);
	}
	else 
	{
		draw_set_color(c_white);
		draw_text(350, 665, "Health: " + string(obj_pl1.healthPt));
	}
	draw_text(350, 682, "Shots: " + string(obj_pl1.shots));

	//instructions
	draw_text(700, 650, "Instructions:");
	draw_text(700, 665, "WASD to move");
	draw_text(700, 682, "Left Click to shoot the Rat Thing");
	draw_text(700, 700, "Right Click to interact");
	draw_text(700, 716, " when near a glowing object");

	//front door gui
	if(obj_bg_hallway_1st.txtbox == 1)
	{
		draw_set_color(c_black);
	
		draw_sprite_stretched(spr_gui, 0, 70, 300, 275, 100)
		draw_text(78, 316, "Door locked.");
		draw_text(78, 332, "Find the Skull Key.");
	
		draw_set_color(c_white);
	}

	//basement door gui
	if(obj_door_basement_2.txtbox == 1)
	{
		draw_set_color(c_black);
		
		draw_sprite_stretched(spr_gui, 0, 700, 300, 275, 100)
		draw_text(716, 316, "Door locked.");
		draw_text(716, 332, "Find the Basement Key.");
	
		draw_set_color(c_white);
	}
}

//win or loss
if(obj_controller.ui_win == true) || (obj_controller.ui_lose == true)
	draw_text(350, 450, "Enter to Restart. Alt to Menu. Esc to Quit.");
