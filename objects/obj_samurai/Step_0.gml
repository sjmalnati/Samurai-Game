/// @description Insert description here
if(vsp < 10) vsp += grav;
if(place_meeting(x,y+1,platform))
{
	vsp = keyboard_check_pressed(vk_space) * -jumpspeed;
}
if(place_meeting(x,y+vsp,platform))
{
	while(!place_meeting(x,y+sign(vsp),platform))
	{
		y+= sign(vsp);
	}
	y--;
	vsp=0;
}
y += vsp;
//movement w/ arrow keys
if(keyboard_check(vk_left) and x>0 and !keyboard_check(vk_right)
and !place_meeting(x-1,y,platform))
{
	weapons.direction = 180;
	x-=2;
	if(keyboard_check(ord("A")))
		sprite_index=spr_samurai_left_rage;
	else
		if(up)
			sprite_index=spr_samurai_left_jump;
		else
			sprite_index=spr_samurai_left_walk;
}
if(keyboard_check_released(vk_left))
{
	sprite_index=spr_samurai_left_still;
}
if(keyboard_check(vk_right) and x<room_width-sprite_width and !keyboard_check(vk_left)
and !place_meeting(x+1,y,platform))
{
	x+=2;
	weapons.direction = 90;
	if(keyboard_check(ord("A")))
		sprite_index=spr_samurai_right_rage;
	if(up)
			sprite_index=spr_samurai_right_jump;
		else
			sprite_index=spr_samurai_right_walk;
}
if(keyboard_check_released(vk_right))
{
	sprite_index=spr_samurai_right_still;
}

if(samurai_health <= 0 or y > room_height+sprite_height/2)
{
	room_goto(menu);
	show_message("You died");
}
if(delay != 0)
{
	delay++;
}
if(delay == 45)
{
	delay = 0;
}
if(keyboard_check(ord("P")))
{
	room_goto(shop);
}