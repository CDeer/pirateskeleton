///MANAGES HERO MOVEMENT.

left = -keyboard_check(vk_left);
right = keyboard_check(vk_right);
up = -keyboard_check(vk_up);
down = keyboard_check(vk_down);


xMove = (left + right) * (xSpd);
yMove = (up + down) * (ySpd);

if(place_meeting(x + xMove, y, UnWalkObj))
{
 xMove = 0;
}
if(place_meeting(x, y + yMove, UnWalkObj))
{
 yMove = 0;
}

if(xMove != 0 && !xMoveLogic && !yMoveLogic && timeX >= 0)
{
 xMoveLogic = true;
 xMoved = xMove;
}
if(xMoveLogic)
{
    if(timeX < timeXNum && floor(timeX / timeXNum) % 1 == 0)
    {
        x += cDelta(xMoved / timeXNum);
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


if(yMove != 0 && !yMoveLogic && !xMoveLogic && timeY >= 0)
{
 yMoveLogic = true;
 yMoved = yMove;
}
if(yMoveLogic)
{
    if(timeY < timeYNum)
    {
        y += cDelta(yMoved / timeYNum);
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
