if(instance_exists(obj_player)){
	distance = distance_to_object(obj_player);
	if(distance<aggro_range){follow = true; path_end();}
	
	if(follow){
		if(distance > AgroFalloff || distance < StopDistance){
			follow = false
			speed = 0
		}else{
			direction=point_direction(x,y,obj_player.x,obj_player.y)
			speed = hsp
		}
		if(shootAttack && distance < ShootDistance){
			instance_create_layer(x,y,"IL_entities",obj_stinger)
			alarm[1] = AttackCooldown * room_speed;
			shootAttack = false;
		}
	}
}
if(Health <= 0){
	instance_destroy();
}