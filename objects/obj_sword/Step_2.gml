if(!OnGround){
	diffx = x - obj_player.x;
	if(image_xscale != sign(diffx)){
		x -= diffx*2;
	}
}