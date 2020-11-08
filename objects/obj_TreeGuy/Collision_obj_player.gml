if(doDamage){
	other.vsp = -5
	other.hsp = 100 * -image_xscale
	other.thrown = true;
	doDamage = false
	damagePlayer(Damage)
}