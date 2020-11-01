/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6AAED6CC
/// @DnDArgument : "code" "if( keyboard_check_pressed(ord("E"))) then $(13_10){$(13_10)if(global.loc<4){$(13_10)global.inventory[2,4] =1;$(13_10)global.slot[global.loc]= lg_health;$(13_10)global.loc +=1;$(13_10)instance_destroy(other)$(13_10)}$(13_10)}"
if( keyboard_check_pressed(ord("E"))) then 
{
if(global.loc<4){
global.inventory[2,4] =1;
global.slot[global.loc]= lg_health;
global.loc +=1;
instance_destroy(other)
}
}