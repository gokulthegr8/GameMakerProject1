if(	point_distance(x, y, xstart, ystart) > Range ||
	tilemap_get_at_pixel(layer_tilemap_get_id("TSL_collision"),x,y)!=0){
	instance_destroy()
}