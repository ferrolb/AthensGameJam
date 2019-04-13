var image = image_index
if (place_meeting(x, y, oPlayer)) {
	sprite_index = BouncePadActivate
	while not (image < 6) {
		image = image + 1
	    image_index = image
	}
	if (!oPlayer.flying) {
		oPlayer.flying = true;
		oPlayer.vertSpeed = (-6 + oPlayer.vertSpeed*-3)
	}
	
} else if (image > 5) {
	sprite_index = BouncePad;
}