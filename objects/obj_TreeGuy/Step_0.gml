if(instance_exists(obj_player)){
	distanceToPlayer = abs(distance_to_object(obj_player));
	xDirectionToPlayer = sign(obj_player.x - x);
}

if(!attack){
	//Changes sprite state
	activeSprite = sign(xSpeed) * (xSpeed != 0);
	switch(activeSprite){
		case 0:
				sprite_index = spr_TreeStanding;
			break;
		case 1:
				sprite_index = spr_TreeMove;
				image_xscale = -1;
			break;
		case -1:
				sprite_index = spr_TreeMove;
				image_xscale = 1;
			break;
	}
	
	
	//Move to the player
	follow = ((distanceToPlayer < AgroRange && distanceToPlayer > Range) * (follow == 0)) + 
			 ((distanceToPlayer > Range) * follow * (distanceToPlayer < AgroFalloff));

	onGround = grounded(id);

	xmove = ((abs(xSpeed) <= MoveSpeed || sign(xSpeed) != xDirectionToPlayer) * (acceleration * xDirectionToPlayer * follow)) + 
					 ((!follow && xSpeed != 0) * -(sign(xSpeed)*acceleration ));
				 
	xSpeed += xmove * onGround;


	if(canAttack && !attack && distanceToPlayer <= Range && !random_range(0,AttackChance)){
		//Cooldown
		sprite_index = spr_TreeAttack;
		attack = true;
		doDamage = true;
		xSpeed = 0;
	}
}

//Add grav if ySpeed < fallSpeed
ySpeed += (ySpeed < FallSpeed) * Gravity;

speeds = collideMove(id,ySpeed,xSpeed);
ySpeed = speeds[0];
xSpeed = speeds[1];


if(Health <= 0){
		instance_destroy()
}