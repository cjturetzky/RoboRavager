/// @description Controls for player
// Clamp
x = clamp(x, 8, room_width-8);
y = clamp(y, 8, 256-8);

// Controls
var up, down, left, right, shoot, reset, leave;

reset = keyboard_check(ord("R"));
leave = keyboard_check(vk_escape);
up =	keyboard_check(ord("W"));
down =	keyboard_check(ord("S"));
left =	keyboard_check(ord("A"));
right =	keyboard_check(ord("D"));
shoot =	mouse_check_button(mb_left);

image_angle = point_direction(x, y, mouse_x, mouse_y);

// Reset and Exit
if reset {
	game_restart();
}

if leave {
	game_end();	
}

// Movement
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

// Shooting
if can_shoot{
	if shoot{
		var inst = instance_create_layer(x, y, "Instances", o_bullet);
		with(inst) {
			direction = point_direction(x, y, mouse_x, mouse_y);
			image_angle = point_direction(x, y, mouse_x, mouse_y);
		}
		can_shoot = false;
		alarm[0] = 10;
	}
}

