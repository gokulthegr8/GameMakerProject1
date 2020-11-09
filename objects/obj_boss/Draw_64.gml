healthPerHeart = 5;
numberHearts =  ceil(Health / healthPerHeart);
for(i = 0; i < numberHearts; i ++){
	shader_set(shader_shiftColors);
	shader_set_uniform_f(sh_color, -.1, .2, .2);
	draw_sprite(spr_heart_strip2, (i == numberHearts-1)&& Health % healthPerHeart != 0 &&(Health % healthPerHeart <= (healthPerHeart/2)), i * 32, 60);
	shader_reset();
}