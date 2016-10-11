if(i > ds_grid_height(turnGrid) - 1)
{
 i = 0;
 o = 0;
}
if(o > ds_grid_height(turnGrid) - 1)
{
 o = 0;
}
action = false;
HealthCheck(ds_grid_get(turnGrid, 0, i));
if(ds_grid_get(turnGrid, 0, i).object_index == HeroManObj)
{
 action = true;
 if(action)
 {
  PlayerCombat();
 }
}
if(ds_grid_get(turnGrid, 0, i).object_index == UnfairBossCharacter)
{
 turn = true;
}
if(turn)
{
 i++;
 turn = false;
 action = false;
}
if(!action)
{
 o++;
}
