/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 41295E39
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)x += (xTo-x) / 7.0;$(13_10)y += (yTo-y) / 7.0;$(13_10)$(13_10)if(follow != noone){$(13_10)	xTo = ((abs(follow.x - x) > cam_bound) * (follow.x - (sign(follow.x - x) * cam_bound))) + $(13_10)		  ((abs(follow.x - x) <= cam_bound) * x)$(13_10)	yTo = follow.y;$(13_10)}$(13_10)$(13_10)show_debug_message(x)$(13_10)$(13_10)//var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);$(13_10)camera_set_view_mat(camera, matrix_build_lookat(x,y,-10,x,y,0,0,1,0));"
/// @description Insert description here
// You can write your code in this editor
x += (xTo-x) / 7.0;
y += (yTo-y) / 7.0;

if(follow != noone){
	xTo = ((abs(follow.x - x) > cam_bound) * (follow.x - (sign(follow.x - x) * cam_bound))) + 
		  ((abs(follow.x - x) <= cam_bound) * x)
	yTo = follow.y;
}

show_debug_message(x)

//var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera, matrix_build_lookat(x,y,-10,x,y,0,0,1,0));