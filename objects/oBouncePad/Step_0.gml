var image = image_index
if (place_meeting(x, y, oPlayer)) {
	sprite_index = BouncePadActivate
	while not (image < 10) {
		image = image + 1
	    image_index = image
	}
	oPlayer.vertSpeed = -5.0
} else if (image > 9) {
	sprite_index = BouncePad;
}