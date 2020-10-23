/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5F0E0B18
/// @DnDArgument : "code" "$(13_10)distanceToPlayer = abs(distance_to_object(obj_player));$(13_10)xDirectionToPlayer = sign(obj_player.x - x);$(13_10)yDirectionToPlayer = sign(obj_player.y - y);$(13_10)$(13_10)//If  5 < distanceToPlayer < AgroRange and follow is 0  follow = 1$(13_10)//if  5 > distanceToPlayer or> distanceToPlayer			follow = 0$(13_10)follow = ((distanceToPlayer < AgroRange && distanceToPlayer > 5) * (follow == 0)) + $(13_10)		 ((distanceToPlayer > 5) * follow * (distanceToPlayer < DropAgroRange));$(13_10)			$(13_10)//If speed <= walkspeed add acceleration$(13_10)//If not following and speed != 0 subtract acceleration* invers of sign(xSpeed)$(13_10)xSpeed +=	((abs(xSpeed) <= WalkSpeed) * (acceleration * xDirectionToPlayer * follow)) + $(13_10)			 ((!follow && xSpeed != 0) * -(sign(xSpeed)*acceleration ));$(13_10)$(13_10)if(attackMove && distanceToPlayer <= 10){$(13_10)	xSpeed += 3 * xDirectionToPlayer;$(13_10)	attackMove = false;$(13_10)	alarm[0] = AttackCooldown * 100;$(13_10)}$(13_10)$(13_10)x += xSpeed;$(13_10)$(13_10)"

distanceToPlayer = abs(distance_to_object(obj_player));
xDirectionToPlayer = sign(obj_player.x - x);
yDirectionToPlayer = sign(obj_player.y - y);

//If  5 < distanceToPlayer < AgroRange and follow is 0  follow = 1
//if  5 > distanceToPlayer or> distanceToPlayer			follow = 0
follow = ((distanceToPlayer < AgroRange && distanceToPlayer > 5) * (follow == 0)) + 
		 ((distanceToPlayer > 5) * follow * (distanceToPlayer < DropAgroRange));
			
//If speed <= walkspeed add acceleration
//If not following and speed != 0 subtract acceleration* invers of sign(xSpeed)
xSpeed +=	((abs(xSpeed) <= WalkSpeed) * (acceleration * xDirectionToPlayer * follow)) + 
			 ((!follow && xSpeed != 0) * -(sign(xSpeed)*acceleration ));

if(attackMove && distanceToPlayer <= 10){
	xSpeed += 3 * xDirectionToPlayer;
	attackMove = false;
	alarm[0] = AttackCooldown * 100;
}

x += xSpeed;