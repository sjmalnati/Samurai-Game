/// @description Insert description here
// You can write your code in this editor
if(delay == 0)
{
	if(time < 30)
	{
		y++;
	}
	if(time >= 30 and time < 60)
	{
		y--;
	}
	if(time == 90)
	{
		time = 0;
	}
	time++;
}
else
{
	delay--;
}