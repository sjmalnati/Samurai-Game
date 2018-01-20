/// @description Insert description here
// You can write your code in this editor
if(object_exists(obj_samurai) and place_meeting(x,y,obj_samurai))
{
	money += 1;
	instance_destroy(self);
}