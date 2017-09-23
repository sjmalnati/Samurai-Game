/// @description Insert description here
// You can write your code in this editor
x += move*dir;
if(position_meeting(x,y,obj_player))
{
	instance_destroy();
}
if(x >= 1024 or x <= 1)
{
	instance_destroy();
}