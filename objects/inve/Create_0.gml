depth = -1;
scale = 1.5;
gui_width= display_get_gui_width();
gui_height= display_get_gui_height();
global.limit = 4;
var xincr = 0;
var yincr = 0;
inv_yloc[0]=0;
inv_xloc[0]=0;

inv_UI_width= 288;
inv_UI_height= 192;
spr_inv_UI= inventory_UI;

inv_UI_x = (gui_width ) - ( inv_UI_width * 0.65* scale);
inv_UI_y= (gui_height * 0.35 ) - ( inv_UI_height * scale);
xincr = inv_UI_x + 5;
yincr = inv_UI_y + 5 ;


for (var j= 0; j<4; j++){
	inv_xloc[j]=inv_UI_x + ( 39*scale );
	if( j>1 ){
		inv_xloc[j]= xincr + ( 39*scale );
	}
}

for (var i= 0; i<4; i++){
	inv_yloc[i]=inv_UI_y + ( 39*scale );
	if( i>1 ){
		inv_yloc[i]= yincr + ( 39*scale );
	}
}