/// @description Insert description here
// You can write your code in this editor
var image = image_index
if (place_meeting(x, y, oPlayer)) {
	sprite_index = BouncePadActivate
	while not (image < 10) {
		image = image + 1
	    image_index = image
	}
	//oPlayer.grav = -0.5
	oPlayer.vertSpeed = -5.0
} else if (image > 9) {
	sprite_index = BouncePad;
}