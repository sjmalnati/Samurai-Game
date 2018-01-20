/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_released(ord("Z")) and step == 0)
{
	hit = true;
	step++;
}
if(step >= 1 and step <= 10)
{
	step++;
	y--;
}
if(step > 10)
{
	step++;
	y++;
}
if(step == 21)
{
	step=0;
	hit=false;
}
//x=obj_samurai.x+4;
//y=obj_samurai.y;