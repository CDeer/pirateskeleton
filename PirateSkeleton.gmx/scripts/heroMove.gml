///MANAGES HERO MOVEMENT.

left = -keyboard_check(vk_left);
right = keyboard_check(vk_right);
up = -keyboard_check(vk_up);
down = keyboard_check(vk_down);


xMove = (left + right) * cDelta(xSpd);
yMove = (up + down) * cDelta(ySpd);

if(xMove != 0 && !xMoveLogic && timeX >= 0)
{
 xMoveLogic = true;
 xMoved = xMove;
}
if(xMoveLogic)
{
    if(timeX < timeXNum)
    {
        x += xMoved / timeXNum;
    }
    else
    {
     timeX = -2;
     xMoveLogic = false;
    }
}
if(timeX < 0 || xMoveLogic)
{
 timeX += cDelta(1);
}


if(yMove != 0 && !yMoveLogic && timeY >= 0)
{
 yMoveLogic = true;
 yMoved = yMove;
}
if(yMoveLogic)
{
    if(timeY < timeYNum)
    {
        y += yMoved / timeYNum;
    }
    else
    {
     timeY = -2;
     yMoveLogic = false;
    }
}
if(timeY < 0 || yMoveLogic)
{
 timeY += cDelta(1);
}
