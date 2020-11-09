alarm[0] = AttackDuration * room_speed;

if(instance_exists(obj_player)){
		last_X = obj_player.x;
		last_Y = obj_player.y + 10;
}
if(!s_onGround()){
	audio_play_sound(axe,0,0)
}