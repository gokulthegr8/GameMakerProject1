draw_set_halign(fa_left)
draw_set_color(c_white)
if (msg1=true) {
	draw_set_halign(fa_center)
	draw_set_color(c_black)
	draw_text(room_width / 3, 150, "Go! Go! Go!")
}
if (msg2=true) {
	draw_set_halign(fa_center)
	draw_set_color(c_navy)
	draw_text(room_width / 3, 150, "You can move by pressing the A and D keys")
}
if (msg3=true) {
	draw_set_halign(fa_center)
	draw_set_color(c_teal)
	draw_text(room_width / 3, 150, "You can jump by pressing the spacebar")
}
if (msg4=true) {
	draw_set_halign(fa_center)
	draw_set_color(c_maroon)
	draw_text(room_width / 3, 150, "You can pickup items and store it in the inventory by Pressing E")
}
if (msg5=true) {
	draw_set_halign(fa_center)
	draw_set_color(c_olive)
	draw_text(room_width / 3, 150, "You can select the items in the inventory by using 1,2,3,4 keys respectively and use left click to attack")
}
if (msg6=true) {
	draw_set_halign(fa_center)
	draw_set_color(c_purple)
	draw_text(room_width / 3, 150, "You can break the mystery boxes using the axe")
}