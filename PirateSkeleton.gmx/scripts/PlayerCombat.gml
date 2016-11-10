z = keyboard_check_pressed(ord("Z"));
left = -keyboard_check_pressed(vk_left);
right = keyboard_check_pressed(vk_right);

pos1 += (left + right);
if(z)
{
 	HealthInteraction(-fieldHeroesList[| o].attackPoint, playerSelection[| pos1])
 	action = false;
 	turn = true;
}
