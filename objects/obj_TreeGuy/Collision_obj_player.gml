if(doDamage){
	other.vsp = -5
	other.hsp = 5 * -image_xscale
	other.thrown = true;
	doDamage = false
	damagePlayer(Damage)
}