i = 0;
action = false;
if(turnGrid[|i, 0] == HeroManObjCombat)
{
 action = true;
 if(!action)
 {
  turn = true;
 }
 else
 {
  //Controls
 }
}
else
{
 action = true;
 if(!action)
 {
  turn = true;
 }
 else
 {
  //Targeting and attacking.
 }
}
if(turn)
{
 i++;
}
