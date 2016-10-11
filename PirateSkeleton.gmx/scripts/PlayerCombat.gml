z = keyboard_check_pressed(ord("Z"));
left = -keyboard_check_pressed(vk_left);
right = keyboard_check_pressed(vk_right);

pos1 += (left + right);
if(pos1 < 0)
{
 pos1 = JobberListSize - 1;
}
if(pos1 > JobberListSize - 1)
{
 pos1 = 0;
}
if(z)
{
 HealthInteraction(-ds_grid_get(turnGrid, 0, i).attackPoint, playerSelection[| pos1])
 action = false;
 turn = true;
}
