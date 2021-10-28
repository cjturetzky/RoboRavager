/// @description Insert description here
// You can write your code in this editor
if(spawn){
	if(random(100) < 1){
		instance_create_layer(x, y, "Instances", o_powerup);
		spawn = false;
	}
}