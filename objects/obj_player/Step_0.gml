key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));

key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

key_space = keyboard_check(vk_space);

var bbox_side;
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

//Horizontal tile collision
if(hsp>0) bbox_side=bbox_right; else bbox_side=bbox_left;
if(tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_top)!=0)||(tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_bottom)!=0)
{
	if(hsp>0) x=x-(x mod 32)+31-(bbox_right-x);
	else x=x-(x mod 32)-(bbox_left-x);
	hsp=0;
	
}

//Vertical tile collision
if(vsp>0) bbox_side=bbox_bottom; else bbox_side=bbox_top;
if(tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+vsp)!=0)||(tilemap_get_at_pixel(tilemap,bbox_right,bbox_side+vsp)!=0)
{
	if(vsp>0) {
			//gravity=0;
			y=y-(y mod 32)+31-(bbox_bottom-y);
	}

	else y=y-(y mod 32)-(bbox_top-y);
	vsp=0;
	
}

//Gravity


y += vsp;
x += hsp;