
if(instance_exists(obj_player)){
	distanceToPlayer = abs(x - obj_player.x);
	xDirectionToPlayer = sign(obj_player.x - x);
}

if(!attackBash && !attackSwing){
	//Changes sprite state
	activeSprite = sign(xSpeed) * (xSpeed != 0);
	switch(activeSprite){
		case 0:
				sprite_index = spr_bossconcept;
			break;
		case 1:
				sprite_index = spr_bosswalk;
				image_xscale = -1;
			break;
		case -1:
				sprite_index = spr_bosswalk;
				image_xscale = 1;
			break;
	}
	
	
	//Move to the player
	follow = ((distanceToPlayer < AgroRange && distanceToPlayer >= Range) * (follow == 0)) + 
			 ((distanceToPlayer >= Range) * follow * (distanceToPlayer < AgroFalloff));

	onGround = grounded(id);

	xmove = ((abs(xSpeed) <= MoveSpeed || sign(xSpeed) != xDirectionToPlayer) * (acceleration * xDirectionToPlayer * follow)) + 
					 ((!follow && xSpeed != 0) * -(sign(xSpeed)*acceleration ));
				 
	xSpeed += xmove * onGround;
	
	show_debug_message("-----")
	show_debug_message(x)
	show_debug_message(distanceToPlayer >= Range)

	if(canAttack && distanceToPlayer <= SwingRange && !random_range(0,AttackChance)){
		//Cooldown
		
		if(distanceToPlayer < BashRange){
			sprite_index = spr_bossbash;
			attack = true;
			doDamage = true;
			attackBash = true;
			xSpeed = 0;
		}else{
			sprite_index = spr_bossswing;
			attack = true;
			attackSwing = true;
			doDamage = true;
			xSpeed = 0;
		}
	}
}

//Add grav if ySpeed < fallSpeed
ySpeed += (ySpeed < FallSpeed) * Gravity;

//speeds = collideMove(id,ySpeed,xSpeed);
//ySpeed = speeds[0];
//xSpeed = speeds[1];
//y += ySpeed;
x += xSpeed;




if(Health <= 0){
		instance_destroy()
}