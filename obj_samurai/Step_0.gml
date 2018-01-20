/// @description Insert description here
vsp = -10;
if(keyboard_check_pressed(vk_right) and  weapon.direction != 1 and !keyboard_check(vk_left))
{
	weapon.x += (weapon.sprite_width-5);
}
if(keyboard_check_pressed(vk_left) and weapon.direction != 2 and !keyboard_check(vk_right))
{
	weapon.x -= (weapon.sprite_width-5);
}

if(keyboard_check_pressed(vk_space) and jumping == false)
{
	up = true;
	jumping = true;
	vspeed = vsp;
}

//jump w/ acceleration
if(vspeed < 0)
	vspeed++;
if(jumping and up and vspeed >= 0)
{
	up = false;
	vspeed = vsp * -1;
}
if(vspeed > 0)
{
	vspeed--;
	if(vspeed <= 0 and !up)
	{
		jumping = false;
	}
}

//constant jump
//if(jumping and up)
//{
//	jumptime++;
//}
//if(jumptime == 7)
//{
//	up = false;
//	vspeed *= -1;
//}
//if(jumping and !up)
//{
//	jumptime--;
//	if(jumptime == 0)
//	{
//		vspeed = 0;
//		jumping = false;
//	}
//}
	
//movement w/ arrow keys
if(keyboard_check(vk_left) and x>0 and !keyboard_check(vk_right))
{
	weapon.image_xscale = -1;
	weapon.direction = 2;
	x-=2;
	weapon.x -= 2;
	if(keyboard_check(ord("A")))
		sprite_index=spr_samurai_left_rage;
	else
		if(up)
			sprite_index=spr_samurai_left_jump;
		else
			sprite_index=spr_samurai_left_walk;
}
if(keyboard_check_released(vk_left))
	sprite_index=spr_samurai_left_still;
if(keyboard_check(vk_right) and x<room_width-sprite_width and !keyboard_check(vk_left))
{
	weapon.direction = 1;
	weapon.image_xscale = 1;
	x+=2;
	weapon.x += 2;
	if(keyboard_check(ord("A")))
		sprite_index=spr_samurai_right_rage;
	if(up)
			sprite_index=spr_samurai_right_jump;
		else
			sprite_index=spr_samurai_right_walk;
}
if(keyboard_check_released(vk_right))
	sprite_index=spr_samurai_right_still;

if(samurai_health <= 0)
{
	//game over code
}