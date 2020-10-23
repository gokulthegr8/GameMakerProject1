/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4C66A018
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDArgument : "funcName" "grounded"
/// @DnDArgument : "arg" "entity"
function grounded(entity) 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 14A9BAED
	/// @DnDParent : 4C66A018
	/// @DnDArgument : "code" "tilemap = layer_tilemap_get_id("TSL_collision");$(13_10)return (tilemap_get_at_pixel(tilemap,entity.bbox_left,entity.bbox_bottom+1)!=0) || $(13_10)		(tilemap_get_at_pixel(tilemap,entity.bbox_right,entity.bbox_bottom+1)!=0);"
	tilemap = layer_tilemap_get_id("TSL_collision");
	return (tilemap_get_at_pixel(tilemap,entity.bbox_left,entity.bbox_bottom+1)!=0) || 
			(tilemap_get_at_pixel(tilemap,entity.bbox_right,entity.bbox_bottom+1)!=0);
}