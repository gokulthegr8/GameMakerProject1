if (global.game_over) {
	draw_set_halign(fa_center)
	draw_set_color(c_red)
	draw_text(room_width / 2, room_height / 2, "Game Over! Press R to restart.")
}

draw_set_halign(fa_left)
draw_set_color(c_white)
draw_text(55, 55, "Score: " + string(score))
