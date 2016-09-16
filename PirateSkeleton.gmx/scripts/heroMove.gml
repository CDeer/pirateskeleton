///MANAGES HERO MOVEMENT.

left = -keyboard_check(vk_left);
right = keyboard_check(vk_right);
up = -keyboard_check(vk_up);
down = keyboard_check(vk_down);


xMove = (left + right) * cDelta(xSpd);
yMove = (up + down) * cDelta(ySpd);
if(xMove != 0 && !xMoveLogic)
{
 xMoveLogic = true;
 xMoved = xMove;
}
if(xMoveLogic)
{
    timeX += cDelta(1);
    if(timeX < timeXNum)
    {
        x += xMoved / timeXNum;
    }
    else
    {
     timeX = 0;
     xMoveLogic = false;
    }
}
