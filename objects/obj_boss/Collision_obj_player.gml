
if(doDamage){
	switch(sprite_index){
		case spr_bossbash:
			if(image_index == 1){
				other.vsp = -3
				other.hsp = 6 * -image_xscale
				other.thrown = true;
				doDamage = false
				damagePlayer(BashDamage)
				}
		break;
		case spr_bossswing:
			other.vsp = -2
			other.hsp = 3 * -image_xscale
			other.thrown = true;
			doDamage = false
			damagePlayer(SwingDamage)
		break;
	}
}
