/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 60BE368C
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDArgument : "funcName" "collideMove"
/// @DnDArgument : "arg" " entity,vsp, hsp"
function collideMove( entity,vsp, hsp) 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 73CF41D1
	/// @DnDParent : 60BE368C
	/// @DnDArgument : "code" "//Horizontal tile collision$(13_10)box_right = entity.bbox_right;$(13_10)box_left = entity.bbox_left;$(13_10)box_top = entity.bbox_top;$(13_10)box_bottom = entity.bbox_bottom;$(13_10)tilemap = layer_tilemap_get_id("TSL_collision");$(13_10)$(13_10)_x = entity.x;$(13_10)_y = entity.y;$(13_10)$(13_10)if(hsp>0) bbox_side=box_right; else bbox_side=box_left;$(13_10)if(tilemap_get_at_pixel(tilemap,bbox_side+hsp,box_top)!=0)||(tilemap_get_at_pixel(tilemap,bbox_side+hsp,box_bottom)!=0)$(13_10){$(13_10)	if(hsp>0) entity.x=_x-(_x mod 32)+31-(box_right-_x);$(13_10)	else entity.x=_x-(_x mod 32)-(box_left-_x);$(13_10)	hsp=0;$(13_10)}$(13_10)$(13_10)//Vertical tile collision$(13_10)if(vsp>0) bbox_side=box_bottom; else bbox_side=box_top;$(13_10)if(tilemap_get_at_pixel(tilemap,box_left,bbox_side+vsp)!=0)||(tilemap_get_at_pixel(tilemap,box_right,bbox_side+vsp)!=0)$(13_10){$(13_10)	if(vsp>0) {$(13_10)			//gravity=0;$(13_10)			entity.y=_y-(_y mod 32)+31-(box_bottom-_y);$(13_10)	}$(13_10)	else{ entity.y=_y-(_y mod 32)-(box_top-_y);$(13_10)		}$(13_10)	$(13_10)	vsp=0;$(13_10)}$(13_10)$(13_10)//Updating entity position$(13_10)entity.y += vsp;$(13_10)entity.x += hsp;$(13_10)//returning new speed values$(13_10)return [vsp,hsp];"
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