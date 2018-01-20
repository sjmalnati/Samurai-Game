/// @description Insert description here
// You can write your code in this editor
if(x<obj_samurai.x)
	sprite_index=spr_enemy_charge_right;
else
	sprite_index=spr_enemy_charge_left;
	


if(distance_to_object(obj_samurai) < 50 and ready == 0)
{
	charging = true;
}
else
{
	//idle
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
	if(x - obj_samurai.x < 0)
	{
		dir = 1;
	}
	else
	{
		dir = -1;
	}
	ready++;
}
if(ready == 50)
{
	charging = false;	
	x += 4 * dir;
}

if(enemy_health <= 0)
{
	instance_destroy();
	show_message("enemy died");
}