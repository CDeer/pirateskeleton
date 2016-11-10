if(i > ds_grid_height(turnGrid) - 1)
{
    i = 0;
}
if(pos1 < 0)
{
    pos1 = playerSelectionSize - 1;
}
if(pos1 > playerSelectionSize - 1)
{
    pos1 = 0;
}
action = false;
HealthCheck(ds_grid_get(turnGrid, 0, i));
for(o = 0; o < HeroListSize; o++)
{
    if(ds_grid_get(turnGrid, 0, i) == fieldHeroesList[| o])
    {
        action = true;
        if(action)
        {
            PlayerCombat();
        }
    }
}
for(o = 0; o < JobberListSize; o++)
{
    if(ds_grid_get(turnGrid, 0, i) == fieldJobbersList[| o])
    {
        action = true;
        if(action)
        {
            AutoAttack();
        }
    }
}
if(playerSelectionSize <= 0)
{
    //Do shit
    turn = false;
    i = 100;
}
if(turn)
{
    i++;
    turn = false;
    action = false;
}
