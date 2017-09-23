/// @description
vsp = -20;

if(keyboard_check_pressed(vk_space) and jumping == false)
{
	up = true;
	jumping = true;
	vspeed = vsp;
}

//jump w/ acceleration
//if(vspeed < 0)
//	vspeed++;
//if(jumping and up and vspeed >= 0)
//{
//	up = false;
//	vspeed = vsp * -1;
//}
//if(vspeed > 0)
//{
//	vspeed--;
//	if(vspeed <= 0 and !up)
//	{
//		jumping = false;
//	}
//}

//constant jump
if(jumping and up)
{
	jumptime++;
}
if(jumptime == 10)
{
	up = false;
	vspeed *= -1;
}
if(jumping and !up)
{
	jumptime--;
	if(jumptime == 0)
	{
		vspeed = 0;
		jumping = false;
	}
}
	
//movement w/ arrow keys
if(keyboard_check(vk_right) and x<room_width-sprite_width)
	x+=5;
if(keyboard_check(vk_down) and y<room_height-sprite_height)
	y += 5	
if(keyboard_check(vk_up) and y>0)
	y -= 5	
if(keyboard_check(vk_left) and x>0)
	x-=5;
	
if(obj_health <= 0)
{
	instance_destroy();
	show_message("Game Over");
}