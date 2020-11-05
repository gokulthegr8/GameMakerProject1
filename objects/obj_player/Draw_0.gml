if(was_hit){
	shader_set(shader0);
	shader_set_uniform_f(handle_timer, hit_timer);
	draw_self();
	shader_reset();
} else {
	draw_self();
}