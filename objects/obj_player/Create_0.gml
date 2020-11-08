/// @description Insert description here
// You can write your code in this editor

hsp = 0;
vsp = 0;

grv = .2;
//gravity=0.1;

aclsp = 1;

frictionAlarm = true;
frcsp = 1;
wlksp = 3;

thrown = false;

tilemap=layer_tilemap_get_id("TSL_collision")

attack = true;
selectedItem = -1;

sprite_unchanged =0;
global.usingitem = -1;
global.loc=0;
global.slot[0]=-1;
global.slot[1]=-1;
global.slot[2]=-1;
global.slot[3]=-1;
global.slot[4]=-1;


global.slot[0]=-1;
global.slot[1]=-1;
global.slot[2]=-1;
global.slot[3]=-1;
global.slot[4]=-1;

was_hit =false;
hit_timer= 0;
hit_release= room_speed * 0.5;
handle_timer = shader_get_uniform(shader0, "utimer");
activeSprite = 0;
vx = camera_get_view_x(view_camera[0]) + 1200;
vy = camera_get_view_y(view_camera[0]) + 30;

global.inventory[0,0]:="Lives"; //Name of the item
global.inventory[0,1]:="This is the amount of lives you got."; //discription of the item
global.inventory[0,2]:=-1; //the sprite of the item
global.inventory[0,3]:=10; //the maximum value of the item
global.inventory[0,4]:=0; //the start value of the item
global.inventory[0,5]:="draw_sprite(global.inventory[0,2], 0, global.vx -500 + 39*t_loc , global.vy + 30 );" //The code which needs to be executed when the item is selected
global.inventory[1,0] ="Sword"; 
global.inventory[1,1] ="A simple cheap sword";

global.inventory[1,2] =spr_silaxe; 
global.inventory[1,3] =1;
global.inventory[1,4] =0;
global.inventory[1,5] = "";
global.inventory[2,0] ="Potion"; 
global.inventory[2,1] ="A Large health potion";

global.inventory[2,2] =spr_potion; 
global.inventory[2,3] =1;
global.inventory[2,4] =0;
global.inventory[2,5] = "";
global.inventory[3,0] ="Dagger"; 
global.inventory[3,1] ="A Large health potion";

global.inventory[3,2] =spr_dagger; 
global.inventory[3,3] =1;
global.inventory[3,4] =0;
global.inventory[3,5] = "";
window_set_fullscreen(true)