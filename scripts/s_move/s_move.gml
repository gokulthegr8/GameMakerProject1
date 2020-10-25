// Script assets have changed
// for v2.3.0 see 
// https://help.yoyogames.com/hc/en-us/articles/360005277377 
// for more information
function collideMove( entity,vsp, hsp) 
{
	//Horizontal tile collision
	box_right = entity.bbox_right;
	box_left = entity.bbox_left;
	box_top = entity.bbox_top;
	box_bottom = entity.bbox_bottom;
	tilemap = layer_tilemap_get_id("TSL_collision");
	
	_x = entity.x;
	_y = entity.y;
	
	if(hsp>0) bbox_side=box_right; else bbox_side=box_left;
	if(tilemap_get_at_pixel(tilemap,bbox_side+hsp,box_top)!=0)||(tilemap_get_at_pixel(tilemap,bbox_side+hsp,box_bottom)!=0)
	{
		if(hsp>0) entity.x=_x-(_x mod 32)+31-(box_right-_x);
		else entity.x=_x-(_x mod 32)-(box_left-_x);
		
		hsp=0;
	}
	
	//Vertical tile collision
	if(vsp>0) bbox_side=box_bottom; else bbox_side=box_top;
	if(tilemap_get_at_pixel(tilemap,box_left,bbox_side+vsp)!=0)||(tilemap_get_at_pixel(tilemap,box_right,bbox_side+vsp)!=0)
	{
		if(vsp>0) {
				//gravity=0;
				entity.y=_y-(_y mod 32)+31-(box_bottom-_y);
		}
		else{ entity.y=_y-(_y mod 32)-(box_top-_y);
			}
		
		
		vsp=0;
	}
	
	//Updating entity position
	entity.y += vsp;
	entity.x += hsp;
	//returning new speed values
	return [vsp,hsp];
}