if( keyboard_check_pressed(ord("E"))) then 
{
if(global.loc<4){
global.inventory[3,4] =1;
global.slot[global.loc]= dagger;
global.loc +=1;
instance_destroy(other);
}
}