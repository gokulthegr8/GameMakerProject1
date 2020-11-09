// Script assets have changed
// for v2.3.0 see 
// https://help.yoyogames.com/hc/en-us/articles/360005277377 
// for more information
function s_menu() 
{
switch(mpos){
	case 0:
	{
		room_goto(FirstStage)
		break;
	}
	case 1:
	{
		room_goto(Stage2)
		break;
	}
	case 2:
	{
		room_goto(Stage3)
		break;
	}
	case 3:
	{
		room_goto(stage4)
		break;
	}
	case 4:
	{
		game_end()
		break;	
	}
	default: break;
}
}