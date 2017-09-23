/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_player) < 500 and !fired)
{
	instance_create_depth(x,y,0,obj_laser)
	fired = true;
}
if(fired)
{
	fire_time++;
}
if(fired and fire_time == fire_rate)
{
	fired = false;
	fire_time = 0;
}
if(obj_health <= 0)
{
	instance_destroy();
	show_message("enemy died");
}