/// @description Insert description here
// You can write your code in this editor

var up, down, left, right, shoot;

up =	keyboard_check(vk_up);
down =	keyboard_check(vk_down);
left =	keyboard_check(vk_left);
right =	keyboard_check(vk_right);
shoot =	keyboard_check(ord("F"));

if up {
	y -= 2;
}
if down {
	y += 2;
}
if left {
	x -= 2;
}
if right{
	x += 2;
}