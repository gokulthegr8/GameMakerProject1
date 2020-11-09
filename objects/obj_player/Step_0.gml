key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_space = keyboard_check(vk_space);
var hmove = (key_right - key_left) * !thrown;

//Changes sprite state
activeSprite = hmove * (hmove != 0);
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

if(onGround && thrown && vsp>=0){
	thrown = false;
}

vsp = (!(onGround && vsp>0) * vsp); //<<if on ground set vsp to 0
vsp += (!grounded(id) * grv) + (-key_space * Jump* grounded(id) * (vsp >= 0));

//Xspeed
hsp += hmove * aclsp;
if(sign(hsp) != sign(hmove) && hsp != 0){
	if(sign(hsp + frcsp * sign(hsp) * -1 ) != sign(hsp)){
		hsp = 0;
	}else{
		hsp += (frcsp * !thrown) * sign(hsp) * -1;
	}
}

//Cap speed
if(vsp > FallSpeed){vsp = FallSpeed*(sign(vsp))}
if(abs(hsp) > wlksp && !thrown){hsp = wlksp*(sign(hsp))}


//Cant pass by ref so "colideMove" returns both speeds
arrSpeeds = collideMove(id,vsp,hsp);
vsp = arrSpeeds[0];
hsp = arrSpeeds[1];

if(was_hit){
	hit_timer +=1;
	if(hit_timer>hit_release){
	was_hit=false;
	}
} else {
	hit_timer = 0;
}
