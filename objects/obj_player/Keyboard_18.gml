if(keyboard_check_pressed(ord("R"))) room_restart()
if(keyboard_check_pressed(ord("G"))) game_restart()
if(keyboard_check_pressed(ord("N"))) 
{
	room_goto_next()
	audio_stop_all()
}
if(keyboard_check_pressed(ord("H"))) instance_create_layer( x + (32 * obj_player.image_xscale) ,y+4,"IL_entities",obj_silaxe)
if(keyboard_check_pressed(ord("S"))) instance_create_layer( x + (32 * obj_player.image_xscale) ,y+4,"IL_entities",obj_sword)
if(keyboard_check_pressed(ord("D"))) instance_create_layer( x + (32 * obj_player.image_xscale) ,y+4,"IL_entities",obj_dagger)
if(keyboard_check_pressed(ord("P"))) instance_create_layer( x + (32 * obj_player.image_xscale) ,y+4,"IL_entities",obj_potion)
if(keyboard_check_pressed(ord("F")))
{
	if(obj_UI.PlayerHealth<200) obj_UI.PlayerHealth=200
}
