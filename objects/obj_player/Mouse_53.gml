if(attack && selectedItem != -1 && global.slot[selectedItem] != -1){
	itemID = instance_create_layer(x,y,"IL_entities",global.slot[selectedItem]);
	itemID.OnGround = false;
	
	attack = false;
	alarm[0] = global.slot[selectedItem].AttackDuration * room_speed;
}