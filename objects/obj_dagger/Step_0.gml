if(!OnGround){
	currentAttackState += attackIncrement;
	speed = -1 * sin(currentAttackState - (pi/2)) * Range;
	
	
	if(instance_exists(obj_player)){
	
		x += obj_player.x - last_X;
		y += obj_player.y - last_Y;
		
		last_X = obj_player.x;
		last_Y = obj_player.y;
	}
}