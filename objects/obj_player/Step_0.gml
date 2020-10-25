key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_space = keyboard_check(vk_space);
var hmove = key_right - key_left;

//Changes sprite state
activeSprite = sign(hmove) * (hmove != 0);
switch(activeSprite){
	case 0:
			sprite_index = spr_standing;
		break;
	case 1:
			sprite_index = spr_running;
			image_xscale = 1;
		break;
	case -1:
			sprite_index = spr_running;
			image_xscale = -1;
		break;
}

//Gravity and Jump
onGround = grounded(id);
vsp = (!onGround * vsp); //<<if on ground set vsp to 0
vsp += (!grounded(id) * grv) + (-key_space * Jump* grounded(id) * (vsp >= 0));

//Xspeed
hsp += hmove * aclsp;
if(sign(hsp) != sign(hmove) && hsp != 0){
	if(sign(hsp + frcsp * sign(hsp) * -1 ) != sign(hsp)){
		hsp = 0;
	}else{
		hsp += frcsp * sign(hsp) * -1;
	}
}

//Cap speed
if(vsp > FallSpeed){vsp = FallSpeed*(sign(vsp))}
if(abs(hsp) > wlksp){hsp = wlksp*(sign(hsp))}

//Cant pass by ref so "colideMove" returns both speeds
arrSpeeds = collideMove(id,vsp,hsp);
vsp = arrSpeeds[0];
hsp = arrSpeeds[1];