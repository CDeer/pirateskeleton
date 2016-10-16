fieldHeroesList = ds_list_create();
fieldJobbersList = ds_list_create();
playerSelection = ds_list_create();
turn = false;
pos1 = 0;
pos2 = 0;
i = 0;
if(instance_exists(HeroManObjCombat))
{
 for(i = 0; i < instance_number(HeroManObjCombat); i++)
 {
  fieldHeroesList[| i] = instance_find(HeroManObjCombat, i);
 }
}
if(instance_exists(UnfairBossCharacter))
{
 for(i = 0; i < instance_number(UnfairBossCharacter); i++)
 {
  fieldJobbersList[| i] = instance_find(UnfairBossCharacter, i);
 }
}
HeroListSize = ds_list_size(fieldHeroesList);
JobberListSize = ds_list_size(fieldJobbersList);
turnGrid = ds_grid_create(2, HeroListSize + JobberListSize)
{
 for(i = 0; i < HeroListSize; i++)
 {
  ds_grid_add(turnGrid, 0, i, fieldHeroesList[| i]);
  ds_grid_add(turnGrid, 1, i, fieldHeroesList[| i].agility);
 }
 for(i = 0; i < JobberListSize; i++)
 {
  ds_grid_add(turnGrid, 0, i + HeroListSize, fieldJobbersList[| i]);
  ds_grid_add(turnGrid, 1, i + HeroListSize, fieldJobbersList[| i].agility);
 }
}
playerSelection = fieldJobbersList;
playerSelectionSize = JobberListSize;
ds_grid_sort(turnGrid, 1, false);
i = 0;
