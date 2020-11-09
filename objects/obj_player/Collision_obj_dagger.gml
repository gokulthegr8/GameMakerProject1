if( keyboard_check_pressed(ord("E")) && other.OnGround) then 
{
if(global.loc<4){
global.inventory[3,4] =1;
//global.slot[global.loc]= spr_dagger;
global.slot[global.loc]= obj_dagger;
global.loc +=1;
instance_destroy(other);
audio_play_sound(weapon_pickup,0,0)
}
}