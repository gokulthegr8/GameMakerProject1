if(obj_UI.PlayerHealth!=200)instance_destroy(other)
obj_UI.PlayerHealth+=50
if(obj_UI.PlayerHealth>200)obj_UI.PlayerHealth=200