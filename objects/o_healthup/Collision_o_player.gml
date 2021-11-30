/// @description Insert description here
// You can write your code in this editor
with(other){
	if(hp_ < 3){
		hp_++;
		o_powerupspawn.alarm[0] = 1000;
	}
}
instance_destroy();