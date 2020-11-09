numberHearts =  ceil(PlayerHealth / 25);
for(i = 0; i < numberHearts; i ++){
	draw_sprite(spr_heart_strip2, (i == numberHearts-1)&& PlayerHealth % 25 != 0 &&(PlayerHealth % 25 <= (25/2)), i * 32, 0);
}