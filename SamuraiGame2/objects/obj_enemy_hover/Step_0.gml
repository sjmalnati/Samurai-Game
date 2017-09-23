/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_player) < 500 and !up)
{
	y -= 10;
}
if(y <= 200)
{
	up = true;
}
if(up and !above_player)
{
	if(x - obj_player.x < 0)
	{
		x += 5
	}
	else
	{
		x -= 5;
	}
}
if(up and (x <= obj_player.x+10 and x >= obj_player.x-10))
{
	above_player = true;
}
if(above_player and y < 448)
{
	y += 10;
}

if(obj_health <= 0)
{
	instance_destroy();
	show_message("enemy died");
}