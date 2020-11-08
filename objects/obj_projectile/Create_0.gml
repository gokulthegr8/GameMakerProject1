future = room_speed/5;
px = obj_player.x
py = obj_player.y

hsp = obj_player.hsp
grv = obj_player.grv * !grounded(obj_player)
vsp = obj_player.vsp

show_debug_message(hsp)
show_debug_message(vsp)

for(i = 0; i < future; i ++){
	px += hsp
	py += vsp
	vsp += grv
}

py += 10

direction = point_direction(x,y,px,py)
//direction = point_direction(x,y,obj_player.x,obj_player.y)
speed = Speed