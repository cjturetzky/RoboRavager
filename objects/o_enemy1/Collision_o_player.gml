/// @description Insert description here
// You can write your code in this editor
with(other){
	if(can_be_damaged){
		hp_ -= 1;
		image_blend = c_red;
		can_be_damaged = false;
		alarm[1] = 100;
	}
}