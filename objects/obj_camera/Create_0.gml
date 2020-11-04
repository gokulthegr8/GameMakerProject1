/// @description Insert description here
// You can write your code in this editor
camera = camera_create();

//var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
//var pm = matrix_build_projection_ortho(700,400,1,10000);
camera_set_view_mat(camera, matrix_build_lookat(x,y,-10,x,y,0,0,1,0));
camera_set_proj_mat(camera, matrix_build_projection_ortho(Cam_width,Cam_height,1,10000));
window_set_size( Cam_width*4,Cam_height*4 );
view_camera[0] = camera;

xTo = x;
yTo = y;