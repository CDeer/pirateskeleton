fieldHeroesList = ds_list_create();
fieldJobbersList = ds_list_create();
if(instance_exists(HeroManObjCombat))
{
 for(i = 0; i < instance_number(HeroManObjCombat); i++)
 {
  fieldHeroesList[|i] = instance_find(HeroManObjCombat, i);
 }
}
if(instance_exists(UnfairBossCharacter))
{
 for(i = 0; i < instance_number(UnfairBossCharacter); i++)
 {
  fieldJobbersList[|i] = instance_find(UnfairBossCharacter, i);
 }
}
HeroListSize = ds_list_size(fieldHeroesList);
JobberListSize = ds_list_size(fieldJobbersList);
turnMap = ds_map_create()
{
 for(i = 0; i < HeroListSize; i++)
 {
  ds_map_add(turnMap, fieldHeroesList[|i], fieldHeroesList[|i].agility);
 }
 for(i = 0; i < JobberListSize; i++)
 {
  ds_map_add(turnMap, fieldJobbersList[|i], fieldJobbersList[|i].agility);
 }
}
