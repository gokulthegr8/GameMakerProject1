shader_set(shader1);
//shader_set_uniform_f(sh_color, red_p, gre_p, blu_p);
shader_set_uniform_f(sh_color, shift);
draw_self();
shader_reset();

