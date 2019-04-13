key_left = keyboard_check(ord("A"));//keyboard_check(vk_left);  
key_right = keyboard_check(ord("D"));// keyboard_check(vk_right);
//key_jump = keyboard_check_pressed(vk_space);

// Set Vertical and Horizontal speed =============================
if (flying) {
	horizSpeed = (key_right - key_left) * flyingSpeed;
} else {
	horizSpeed = (key_right - key_left) * walkSpeed;
}
vertSpeed = vertSpeed + grav;

// Horizontal collision ==========================================
if (place_meeting(x+horizSpeed, y, oWall)) {
	while(!place_meeting(x+sign(horizSpeed), y, oWall)) {
		x = x + sign(horizSpeed);
	}
	horizSpeed = 0;
}
x = x + horizSpeed;

// Vertical collision ============================================
if (place_meeting(x, y+vertSpeed, oWall)) {
	while(!place_meeting(x, y+sign(vertSpeed), oWall)) {
		y = y + sign(vertSpeed);
	}
	vertSpeed = 0;
	flying = false;
} else {
	flying = true;
}
y = y + vertSpeed;

// Animation =====================================================

if (horizSpeed > 0) {
	sprite_index = sWalk
	image_xscale = 1
} else if (horizSpeed < 0) {
	sprite_index = sWalk
	image_xscale = -1
} else if (horizSpeed = 0) {
	sprite_index = sStanding
}

if (vertSpeed < 0) {
	sprite_index = sUpwards
} else if (vertSpeed > 0) {
	sprite_index = sStraightFall

	if (horizSpeed < 0) {
		image_xscale = -1
		sprite_index = sSideFall
	} else if (horizSpeed > 0) {
		image_xscale = 1
		sprite_index = sSideFall
	}
}


