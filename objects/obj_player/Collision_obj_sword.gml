if( keyboard_check_pressed(ord("E")) && other.OnGround) then 
{
if(global.loc<4){
global.inventory[1,4] =1;
//global.slot[global.loc]= spr_silaxe;
global.slot[global.loc]= obj_sword;
global.loc +=1;
instance_destroy(other);
}
}