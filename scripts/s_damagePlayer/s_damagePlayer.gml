// Script assets have changed
// for v2.3.0 see 
// https://help.yoyogames.com/hc/en-us/articles/360005277377 
// for more information
function damagePlayer(damage) 
{
	obj_UI.PlayerHealth -= damage;
	if(obj_UI.PlayerHealth <= 0){
		instance_destroy(obj_player);
	}
}