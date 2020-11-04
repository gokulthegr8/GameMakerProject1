// Script assets have changed
// for v2.3.0 see 
// https://help.yoyogames.com/hc/en-us/articles/360005277377 
// for more information
function remove_arr(argument0)
{
	for(i =argument0; i<4; i++)
	{
	global.slot[i]=global.slot[i+1];
	}
	

}