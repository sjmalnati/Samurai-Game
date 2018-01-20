/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_samurai) and x<obj_samurai.x)
	sprite_index=spr_enemy_fire_right;
else
	sprite_index=spr_enemy_fire_left;
	
if(distance_to_object(obj_samurai) < 100 and !fired)
{
	instance_create_depth(x,y+5,0,obj_laser)
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
if(enemy_health <= 0)
{
	instance_destroy();
	show_message("enemy died");
}