/// @description Insert description here
// You can write your code in this editor

if(spawn){
	var inst = instance_create_layer(x, y, "Instances", o_enemy1);
	with (inst){
		direction = point_direction(x, y, o_player.x, o_player.y);
	}
	spawn = false;
	alarm[0] = random_range(100, 300);
}