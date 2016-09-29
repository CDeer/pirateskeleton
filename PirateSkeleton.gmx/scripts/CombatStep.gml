action = false;
if(ds_grid_get(turnGrid, i, 0) == fieldHeroesList[| i])
{
 action = true;
 if(action)
 {
  PlayerCombat();
 }
}
if(ds_grid_get(turnGrid, i, 0) == fieldJobbersList[| (i - HeroListSize)])
{
 turn = true;
}
if(turn)
{
 i++;
 turn = false;
}
if(i > ds_grid_width(turnGrid) - 1)
{
 i = 0;
}
