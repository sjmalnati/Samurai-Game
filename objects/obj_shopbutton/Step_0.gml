/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button_pressed(mb_left) and position_meeting(mouse_x,mouse_y,self))
{
	if(obj_money.money >= buyable.price)
	{
		show_message("item bought");
		obj_money.money -= buyable.price;
	}
	else
	{
		show_message("not enough money");
	}
}
if(keyboard_check(ord("P")))
{
	room_goto(room0)
}