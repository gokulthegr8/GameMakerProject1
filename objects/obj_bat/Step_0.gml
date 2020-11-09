if(instance_exists(obj_player)){
	distance = distance_to_object(obj_player);
	
	xdir = -sign(obj_player.x - x);
	ydir = -sign(obj_player.y - y);
	tilemap = layer_tilemap_get_id("TSL_collision");
	if(distance<AgroRange && tilemap_get_at_pixel(tilemap,x + (xdir * 20), y + (ydir * 20))!=0){
		follow = true; 
		image_speed = base_imageSpeed; 
	}
	
	if(!attack){
		if(distance > AgroFalloff || distance < StopDistance || sprite_index == spr_BatWakeUp){
			follow = false
			speed = 0
		}else{
			direction=point_direction(x,y+20,obj_player.x,obj_player.y)
			speed = MoveSpeed
		}
		if(canAttack && distance < Range){
			alarm[1] = AttackCooldown * room_speed;
			alarm[0] = AttackDuration * room_speed;
			direction=point_direction(x,y+20,obj_player.x,obj_player.y)
			canAttack = false;
			attack = true;
		}
	}else{
		speed = MoveSpeed*4
	}
}


if(Health <= 0){
	instance_destroy();
}