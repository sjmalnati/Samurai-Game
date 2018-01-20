/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_samurai) < 50 and !up)
{
	y -= 5;
}
if(y < 16)
{
	up = true;
}

if(up and (x <= obj_samurai.x+10 and x >= obj_samurai.x-10))
{
	above_player = true;
}


if(up and !still)
{
	if(x - obj_samurai.x < 0)
	{
		x += 1.5;
	}
	else
	{
		x -= 1.5;
	}
}

if(above_player and ready<25)
{
	if(obj_samurai.x == obj_samurai.xprevious)
	{
		still = true;
	}
}

if(still and ready < 25)
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

if(ready >= 25 and y < 70)
{
	y += 3;
}

if(y >= 70)
{
	done++;
}

if(done == 10)//change this # for time on ground
{
	up = false;
	above_player = false;
	still = false;
	ready = 0;
	done = false;
}


if(enemy_health <= 0)
{
	instance_destroy();
	show_message("enemy died");
}