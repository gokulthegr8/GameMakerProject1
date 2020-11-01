/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0BF6DE03
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)//window_set_fullscreen(true)$(13_10)$(13_10)hsp = 0;$(13_10)vsp = 0;$(13_10)t_loc= 1;$(13_10)sprite_unchanged =0;$(13_10)grv = .2;$(13_10)inv_stack= ds_stack_create();$(13_10)health =0;$(13_10)//gravity=0.1;$(13_10)//depth =-1;$(13_10)aclsp = 1;$(13_10)global.loc=0;$(13_10)global.usingitem = spr_dummy;$(13_10)frictionAlarm = true;$(13_10)frcsp = 1;$(13_10)wlksp = 3;$(13_10)global.slot[0]=spr_dummy;$(13_10)global.slot[1]=spr_dummy;$(13_10)global.slot[2]=spr_dummy;$(13_10)global.slot[3]=spr_dummy;$(13_10)global.slot[4]=spr_dummy;$(13_10)global.gun_flag=false;$(13_10)activeSprite = 0;$(13_10)vx = camera_get_view_x(view_camera[0]) + 1200;$(13_10)vy = camera_get_view_y(view_camera[0]) + 30;$(13_10)$(13_10)tilemap=layer_tilemap_get_id("TSL_collision")$(13_10) $(13_10)global.inventory[0,0]:="Lives"; //Name of the item$(13_10)global.inventory[0,1]:="This is the amount of lives you got."; //discription of the item$(13_10)global.inventory[0,2]:= spr_dummy; //the sprite of the item$(13_10)global.inventory[0,3]:=10; //the maximum value of the item$(13_10)global.inventory[0,4]:=0; //the start value of the item$(13_10)global.inventory[0,5]:="draw_sprite(global.inventory[0,2], 0, global.vx -500 + 39*t_loc , global.vy + 30 );" //The code which needs to be executed when the item is selected$(13_10)global.inventory[1,0] ="Sword"; $(13_10)global.inventory[1,1] ="A simple cheap sword";$(13_10)global.inventory[1,2] =silver_axe; $(13_10)global.inventory[1,3] =1;$(13_10)global.inventory[1,4] =0;$(13_10)global.inventory[1,5] = "";$(13_10)global.inventory[2,0] ="Potion"; $(13_10)global.inventory[2,1] ="A Large health potion";$(13_10)global.inventory[2,2] =lg_health; $(13_10)global.inventory[2,3] =1;$(13_10)global.inventory[2,4] =0;$(13_10)global.inventory[2,5] = "";$(13_10)global.inventory[3,0] ="Dagger"; $(13_10)global.inventory[3,1] ="A Large health potion";$(13_10)global.inventory[3,2] =dagger; $(13_10)global.inventory[3,3] =1;$(13_10)global.inventory[3,4] =0;$(13_10)global.inventory[3,5] = "";$(13_10)$(13_10)//"
/// @description Insert description here
// You can write your code in this editor
//window_set_fullscreen(true)

hsp = 0;
vsp = 0;
t_loc= 1;
sprite_unchanged =0;
grv = .2;
inv_stack= ds_stack_create();
health =0;
//gravity=0.1;
//depth =-1;
aclsp = 1;
global.loc=0;
global.usingitem = spr_dummy;
frictionAlarm = true;
frcsp = 1;
wlksp = 3;
global.slot[0]=spr_dummy;
global.slot[1]=spr_dummy;
global.slot[2]=spr_dummy;
global.slot[3]=spr_dummy;
global.slot[4]=spr_dummy;
global.gun_flag=false;
activeSprite = 0;
vx = camera_get_view_x(view_camera[0]) + 1200;
vy = camera_get_view_y(view_camera[0]) + 30;

tilemap=layer_tilemap_get_id("TSL_collision")
 
global.inventory[0,0]:="Lives"; //Name of the item
global.inventory[0,1]:="This is the amount of lives you got."; //discription of the item
global.inventory[0,2]:= spr_dummy; //the sprite of the item
global.inventory[0,3]:=10; //the maximum value of the item
global.inventory[0,4]:=0; //the start value of the item
global.inventory[0,5]:="draw_sprite(global.inventory[0,2], 0, global.vx -500 + 39*t_loc , global.vy + 30 );" //The code which needs to be executed when the item is selected
global.inventory[1,0] ="Sword"; 
global.inventory[1,1] ="A simple cheap sword";
global.inventory[1,2] =silver_axe; 
global.inventory[1,3] =1;
global.inventory[1,4] =0;
global.inventory[1,5] = "";
global.inventory[2,0] ="Potion"; 
global.inventory[2,1] ="A Large health potion";
global.inventory[2,2] =lg_health; 
global.inventory[2,3] =1;
global.inventory[2,4] =0;
global.inventory[2,5] = "";
global.inventory[3,0] ="Dagger"; 
global.inventory[3,1] ="A Large health potion";
global.inventory[3,2] =dagger; 
global.inventory[3,3] =1;
global.inventory[3,4] =0;
global.inventory[3,5] = "";

//