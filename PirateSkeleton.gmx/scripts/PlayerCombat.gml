z = keyboard_check(ord("Z"));
left = -keyboard_check(vk_left);
right = keyboard_check(vk_right);

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
 HealthInteraction(-ds_grid_get(turnGrid, i, 0).attackPoint, playerSelection[| pos1])
 action = false;
 turn = true;
}
