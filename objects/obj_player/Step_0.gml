/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6DBDD024
/// @DnDArgument : "code" "key_left = keyboard_check(ord("A"));$(13_10)key_right = keyboard_check(ord("D"));$(13_10)$(13_10)key_up = keyboard_check(ord("W"));$(13_10)key_down = keyboard_check(ord("S"));$(13_10)$(13_10)key_space = keyboard_check(vk_space);$(13_10)$(13_10)var hmove = key_right - key_left;$(13_10)var vmove = key_down - key_up;$(13_10)$(13_10)hsp += hmove * aclsp;$(13_10)vsp += vmove * aclsp;//Take this out when gravity is ready to be used$(13_10)//vsp += grv; //Put this in when gravity is ready to be used$(13_10)$(13_10)$(13_10)//Changes sprite state$(13_10)activeSprite = sign(hmove) * (hmove != 0);$(13_10)switch(activeSprite){$(13_10)	case 0:$(13_10)			sprite_index = spr_standing;$(13_10)		break;$(13_10)	case 1:$(13_10)			sprite_index = spr_running;$(13_10)			image_xscale = 1;$(13_10)		break;$(13_10)	case -1:$(13_10)			sprite_index = spr_running;$(13_10)			image_xscale = -1;$(13_10)		break;$(13_10)}$(13_10)$(13_10)//When the code is ready to use gravity this vsp block$(13_10)//needs to be taken out$(13_10)if(sign(vsp) != sign(vmove) && vsp != 0){$(13_10)	if(sign(vsp + frcsp * sign(vsp) * -1 ) != sign(vsp)){$(13_10)		vsp = 0;$(13_10)	}else{$(13_10)		vsp += frcsp * sign(vsp) * -1;$(13_10)	}$(13_10)}$(13_10)$(13_10)if(sign(hsp) != sign(hmove) && hsp != 0){$(13_10)	if(sign(hsp + frcsp * sign(hsp) * -1 ) != sign(hsp)){$(13_10)		hsp = 0;$(13_10)	}else{$(13_10)		hsp += frcsp * sign(hsp) * -1;$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)if(abs(vsp) > wlksp){vsp = wlksp*(sign(vsp))}$(13_10)if(abs(hsp) > wlksp){hsp = wlksp*(sign(hsp))}$(13_10)$(13_10)y += vsp;$(13_10)x += hsp;"
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));

key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

key_space = keyboard_check(vk_space);

var hmove = key_right - key_left;
var vmove = key_down - key_up;

hsp += hmove * aclsp;
vsp += vmove * aclsp;//Take this out when gravity is ready to be used
//vsp += grv; //Put this in when gravity is ready to be used


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

//When the code is ready to use gravity this vsp block
//needs to be taken out
if(sign(vsp) != sign(vmove) && vsp != 0){
	if(sign(vsp + frcsp * sign(vsp) * -1 ) != sign(vsp)){
		vsp = 0;
	}else{
		vsp += frcsp * sign(vsp) * -1;
	}
}

if(sign(hsp) != sign(hmove) && hsp != 0){
	if(sign(hsp + frcsp * sign(hsp) * -1 ) != sign(hsp)){
		hsp = 0;
	}else{
		hsp += frcsp * sign(hsp) * -1;
	}
}


if(abs(vsp) > wlksp){vsp = wlksp*(sign(vsp))}
if(abs(hsp) > wlksp){hsp = wlksp*(sign(hsp))}

y += vsp;
x += hsp;