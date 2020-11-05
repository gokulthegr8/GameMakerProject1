if(!OnGround){
	if(instance_exists(obj_player)){
		
		x += obj_player.x - last_X;
		y += obj_player.y - last_Y;
		image_xscale= obj_player.image_xscale
		last_X = obj_player.x;
		last_Y = obj_player.y;
	}
	if(NumEnemies <= 0){
		instance_destroy();
	}
}
