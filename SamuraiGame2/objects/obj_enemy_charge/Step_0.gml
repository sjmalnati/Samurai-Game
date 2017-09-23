/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_player) < 500 and ready == 0)
{
	charging = true;
}
if(charging)
{
	if(ready%2 == 0)
	{
		x+=5;
	}
	else
	{
		x-=5;
	}
	ready++;
}
if(ready == 10)
{
	charging = false;
	if(x - obj_player.x < 0)
	{
		dir = 1;
	}
	else
	{
		dir = -1;
	}
	x += 15 * dir;
}

if(obj_health <= 0)
{
	instance_destroy();
	show_message("enemy died");
}