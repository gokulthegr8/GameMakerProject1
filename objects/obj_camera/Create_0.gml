/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6038009A
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)camera = camera_create();$(13_10)$(13_10)//var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);$(13_10)//var pm = matrix_build_projection_ortho(700,400,1,10000);$(13_10)camera_set_view_mat(camera, matrix_build_lookat(x,y,-10,x,y,0,0,1,0));$(13_10)camera_set_proj_mat(camera, matrix_build_projection_ortho(cam_width,cam_height,1,10000));$(13_10)window_set_size( cam_width*4,cam_height*4 );$(13_10)view_camera[0] = camera;$(13_10)$(13_10)xTo = x;$(13_10)yTo = y;"
/// @description Insert description here
// You can write your code in this editor
camera = camera_create();

//var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
//var pm = matrix_build_projection_ortho(700,400,1,10000);
camera_set_view_mat(camera, matrix_build_lookat(x,y,-10,x,y,0,0,1,0));
camera_set_proj_mat(camera, matrix_build_projection_ortho(cam_width,cam_height,1,10000));
window_set_size( cam_width*4,cam_height*4 );
view_camera[0] = camera;

xTo = x;
yTo = y;