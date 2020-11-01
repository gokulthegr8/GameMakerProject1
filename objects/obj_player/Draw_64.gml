draw_sprite(inventory_UI,0, vx , vy);
for(i=0; i<=3; i+=1)
  {
  if global.slot[i]!= spr_dummy then
    {
    draw_sprite(global.slot[i], 0, vx +15 + 47*i , vy + 20);
    }
  }
  