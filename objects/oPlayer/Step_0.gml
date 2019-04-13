/// @description Insert description here
// You can write your code in this editor
key_left = keyboard_check(ord("A"));//keyboard_check(vk_left);  
key_right = keyboard_check(ord("D"));// keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

var  move = key_right - key_left;

horizSpeed = move * walkSpeed;

if (place_meeting(x+horizSpeed, y, oWall)) {
	while(!place_meeting(x+sign(horizSpeed), y, oWall)) {
		x = x + sign(horizSpeed)
	}
	horizSpeed = 0
}
x = x + horizSpeed;



