if(!OnGround){
other.Health -= Damage * (NumEnemies > 0) * !OnGround;
NumEnemies -= 1;
}
