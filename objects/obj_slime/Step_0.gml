/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5F0E0B18
/// @DnDArgument : "code" "distanceToPlayer = abs(distance_to_object(obj_player));$(13_10)xDirectionToPlayer = sign(obj_player.x - x);$(13_10)//yDirectionToPlayer = sign(obj_player.y - y);$(13_10)$(13_10)//If  5 < distanceToPlayer < AgroRange and follow is 0  follow = 1$(13_10)//if  5 > distanceToPlayer or> distanceToPlayer			follow = 0$(13_10)follow = ((distanceToPlayer < AgroRange && distanceToPlayer > 5) * (follow == 0)) + $(13_10)		 ((distanceToPlayer > 5) * follow * (distanceToPlayer < DropAgroRange));$(13_10)$(13_10)onGround = grounded(id);$(13_10)$(13_10)//Jump and move when attacking$(13_10)if(attackMove && distanceToPlayer <= 10){$(13_10)	ySpeed -= 7;$(13_10)	xSpeed += 6 * xDirectionToPlayer * onGround;$(13_10)	$(13_10)	//Cooldown$(13_10)	attackMove = false;$(13_10)	alarm[0] = AttackCooldown * 100;$(13_10)}else{$(13_10)		//movement stuff$(13_10)		xmove = ((abs(xSpeed) <= WalkSpeed || sign(xSpeed) != xDirectionToPlayer) * (acceleration * xDirectionToPlayer * follow)) + $(13_10)				 ((!follow && xSpeed != 0) * -(sign(xSpeed)*acceleration ));$(13_10)		$(13_10)		xSpeed += xmove * onGround;$(13_10)}$(13_10)$(13_10)//Add more grav if ySpeed < fallSpeed$(13_10)ySpeed += (ySpeed < FallSpeed) * Gravity;$(13_10)$(13_10)speeds = collideMove(id,ySpeed,xSpeed);$(13_10)ySpeed = speeds[0];$(13_10)xSpeed = speeds[1];$(13_10)"
distanceToPlayer = abs(distance_to_object(obj_player));
xDirectionToPlayer = sign(obj_player.x - x);
//yDirectionToPlayer = sign(obj_player.y - y);

//If  5 < distanceToPlayer < AgroRange and follow is 0  follow = 1
//if  5 > distanceToPlayer or> distanceToPlayer			follow = 0
follow = ((distanceToPlayer < AgroRange && distanceToPlayer > 5) * (follow == 0)) + 
		 ((distanceToPlayer > 5) * follow * (distanceToPlayer < DropAgroRange));

onGround = grounded(id);

//Jump and move when attacking
if(attackMove && distanceToPlayer <= 10){
	ySpeed -= 7;
	xSpeed += 6 * xDirectionToPlayer * onGround;
	
	//Cooldown
	attackMove = false;
	alarm[0] = AttackCooldown * 100;
}else{
		//movement stuff
		xmove = ((abs(xSpeed) <= WalkSpeed || sign(xSpeed) != xDirectionToPlayer) * (acceleration * xDirectionToPlayer * follow)) + 
				 ((!follow && xSpeed != 0) * -(sign(xSpeed)*acceleration ));
		
		xSpeed += xmove * onGround;
}

//Add more grav if ySpeed < fallSpeed
ySpeed += (ySpeed < FallSpeed) * Gravity;

speeds = collideMove(id,ySpeed,xSpeed);
ySpeed = speeds[0];
xSpeed = speeds[1];