direction = point_direction(x, y, mouse_x, mouse_y);

attackLength = AttackDuration * room_speed;
attackIncrement = pi / attackLength;
currentAttackState = 0;

alarm[0] = attackLength;

if(instance_exists(obj_player)){
	last_X = obj_player.x;
	last_Y = obj_player.y;
}
if(!s_onGround()){
	audio_play_sound(dagger,0,0)
}
/*
This is somthing for the attack code
enemieContact = array_create(NumEnemies);
for(int i = 0; i < ){
	
}
*/