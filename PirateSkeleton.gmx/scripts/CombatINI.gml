fieldHeroesList = ds_list_create();
fieldJobbersList = ds_list_create();
if(instance_exists(HeroManObjCombat))
{
 for(i = 0; i < instance_number(HeroManObjCombat - 1); i++)
 {
  fieldHeroesList[i] = instance_find(HeroManObjCombat, i);
 }
}
if(instance_exists(UnfairBossCharacter))
{
 for(i = 0; i < instance_number(UnfairBossCharacter - 1); i++)
 {
  fieldJobbersList[i] = instance_find(UnfairBossCharacter, i);
 }
}
