/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_released(ord("Z")) and !hit)
{
	hit = true;
	if(direction = 90)
	{
		dir = 1;
	}
	else
	{
		dir=-1
	}
}
if(hit)
{
	x+=dir*5
	if(x > room_width or x < 0)
	{
		hit = false;
	}
}
else
{
	x=obj_samurai.x+4;
	y=obj_samurai.y;
}