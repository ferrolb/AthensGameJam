// Set Vertical and Horizontal speed =============================
vertSpeed = vertSpeed + grav;

// Horizontal collision ==========================================
if (place_meeting(x+horizSpeed, y, oWall)) {
	while(!place_meeting(x+sign(horizSpeed), y, oWall)) {
		x = x + sign(horizSpeed);
	}
	horizSpeed = -horizSpeed;
} else if (place_meeting(x+horizSpeed, y, oPlayer)) {
		while(!place_meeting(x+sign(horizSpeed), y, oPlayer)) {
		x = x + sign(horizSpeed);
	}
	//room_goto(Room1)
	room_restart()
}
x = x + horizSpeed;
if (horizSpeed < 0) {
	image_xscale = 1;
} else {
	image_xscale = -1;
}
	
// Vertical collision ============================================
if (place_meeting(x, y+vertSpeed, oWall)) {
	while(!place_meeting(x, y+sign(vertSpeed), oWall)) {
		y = y + sign(vertSpeed);
	}
	vertSpeed = 0;
}
y = y + vertSpeed;

