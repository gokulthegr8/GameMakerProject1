
if(instance_exists(obj_player)){
	distanceToPlayer = abs(distance_to_object(obj_player));
	xDirectionToPlayer = sign(obj_player.x - x);

//yDirectionToPlayer = sign(obj_player.y - y);

//If  5 < distanceToPlayer < AgroRange and follow is 0  follow = 1
//if  5 > distanceToPlayer or> distanceToPlayer			follow = 0
follow = ((distanceToPlayer < AgroRange && distanceToPlayer > 5) * (follow == 0)) + 
		 ((distanceToPlayer > 5) * follow * (distanceToPlayer < DropAgroRange));

onGround = grounded(id);

//Jump and move when attacking
if(attackMove && distanceToPlayer <= 10 and !random_range(0,AttackChance)){
	ySpeed -= 7;
	xSpeed += 6 * xDirectionToPlayer * onGround;
	
	//Cooldown
	attack = true;
	attackMove = false;
	alarm[0] = AttackCooldown * 100;
}else{
		//movement stuff
		xmove = ((abs(xSpeed) <= WalkSpeed || sign(xSpeed) != xDirectionToPlayer) * (acceleration * xDirectionToPlayer * follow)) + 
				 ((!follow && xSpeed != 0) * -(sign(xSpeed)*acceleration ));
		
		xSpeed += xmove * onGround;
}

//Add grav if ySpeed < fallSpeed
ySpeed += (ySpeed < FallSpeed) * Gravity;

speeds = collideMove(id,ySpeed,xSpeed);
ySpeed = speeds[0];
xSpeed = speeds[1];

if(attack){
	attack = !onGround;
	if(place_meeting(x,y,obj_player)){
		damagePlayer(AttackDamage);
		attack = false;
	}
}
if(Health <= 0){
		instance_destroy()
}
}