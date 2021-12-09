/// @description Insert description here
// You can write your code in this editor
if(spawn){
		if(o_player.hp_ == 1 || (random(1) < 0.5 && o_player.hp_ < 3)){
			instance_create_layer(x, y, "Instances", o_healthup);
		}
		else{
			instance_create_layer(x, y, "Instances", o_powerup);
		}
		spawn = false;
}