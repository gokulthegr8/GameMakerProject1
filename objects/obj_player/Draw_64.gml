draw_sprite(spr_inventory,0, vx , vy);
for(i=0; i<=3; i+=1)
  {
  if global.slot[i]!= -1 then
    {
    draw_sprite(object_get_sprite(global.slot[i]), 0, vx + 30 + (i * 40), vy + 30);
    }
  }