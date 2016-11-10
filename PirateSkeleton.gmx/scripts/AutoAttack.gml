///AutoAttack()

HealthInteraction(-ds_grid_get(turnGrid, 0, i).attackPoint, enemySelection[| ceil(random_range(0,enemySelectionSize - 1))]);
action = false;
turn = true;

//HeroSelection = somegrid0
//select based on ifs
//health interaction after choosing.
