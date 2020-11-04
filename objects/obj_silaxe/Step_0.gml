if(!OnGround){
	if(instance_exists(obj_player)){
		
		x += obj_player.x - last_X;
		y += obj_player.y - last_Y;
	
		last_X = obj_player.x;
		last_Y = obj_player.y;
	}
	if(NumEnemies <= 0){
		instance_destroy();
	}
}
