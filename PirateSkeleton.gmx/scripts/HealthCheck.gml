///HealthCheck(turngrid)
if(!(argument0.dead))
{
    if((argument0.healthPoint) <= 0)
    {
        argument0.dead = true;
        ds_grid_set(turnGrid, 1, i, 0);
        ds_grid_sort(turnGrid, 1, false);
        ds_grid_resize(turnGrid, ds_grid_width(turnGrid), ds_grid_height(turnGrid) - 1);
        for(n = 0; n < playerSelectionSize; n++)
        {
            if(argument0 == playerSelection[| n])
            {
                playerSelection[| n ].visible = false;
                ds_list_delete(playerSelection, ds_list_find_index(playerSelection, argument0))
                playerSelectionSize = ds_list_size(playerSelection);
                if(pos1 >= playerSelectionSize)
                {
                    pos1 = playerSelectionSize - 1;
                }
            }
        }
    }
}
