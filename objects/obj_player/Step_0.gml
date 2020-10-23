/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 713880D9
/// @DnDArgument : "code" "key_left = keyboard_check(ord("A"));$(13_10)key_right = keyboard_check(ord("D"));$(13_10)key_up = keyboard_check(ord("W"));$(13_10)key_down = keyboard_check(ord("S"));$(13_10)key_space = keyboard_check(vk_space);$(13_10)var hmove = key_right - key_left;$(13_10)$(13_10)//Changes sprite state$(13_10)activeSprite = sign(hmove) * (hmove != 0);$(13_10)switch(activeSprite){$(13_10)	case 0:$(13_10)			sprite_index = spr_standing;$(13_10)		break;$(13_10)	case 1:$(13_10)			sprite_index = spr_running;$(13_10)			image_xscale = 1;$(13_10)		break;$(13_10)	case -1:$(13_10)			sprite_index = spr_running;$(13_10)			image_xscale = -1;$(13_10)		break;$(13_10)}$(13_10)$(13_10)//Gravity and Jump$(13_10)vsp += (!grounded(id) * grv) + (-key_space * Jump * grounded(id));$(13_10)$(13_10)//Xspeed$(13_10)hsp += hmove * aclsp;$(13_10)if(sign(hsp) != sign(hmove) && hsp != 0){$(13_10)	if(sign(hsp + frcsp * sign(hsp) * -1 ) != sign(hsp)){$(13_10)		hsp = 0;$(13_10)	}else{$(13_10)		hsp += frcsp * sign(hsp) * -1;$(13_10)	}$(13_10)}$(13_10)$(13_10)//Cap speed$(13_10)if(vsp > FallSpeed){vsp = FallSpeed*(sign(vsp))}$(13_10)if(abs(hsp) > wlksp){hsp = wlksp*(sign(hsp))}$(13_10)$(13_10)//Cant pass by ref so "colideMove" returns both speeds$(13_10)arrSpeeds = collideMove(id,vsp,hsp);$(13_10)vsp = arrSpeeds[0];$(13_10)hsp = arrSpeeds[1];$(13_10)show_debug_message(vsp);$(13_10)"
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
vsp += (!grounded(id) * grv) + (-key_space * Jump * grounded(id));

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
show_debug_message(vsp);