if(collisionAttack){
	damagePlayer(CollisionDamage);
	alarm[0] = AttackCooldown * room_speed;
	collisionAttack = false;
}