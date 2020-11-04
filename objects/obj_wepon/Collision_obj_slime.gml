if(!OnGround){
other.Health -= Damage * (NumEnemies > 0) * !OnGround;
other.ySpeed -= 2;
other.xSpeed = other.xDirectionToPlayer * -2;
NumEnemies -= 1;
}
