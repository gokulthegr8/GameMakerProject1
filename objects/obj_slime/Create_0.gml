defaultImageSpeed = image_speed;
image_index = random_range(0,image_number);
sh_color = shader_get_uniform(shader1, "shift");
shift  = random_range(-.2, .2);

xSpeed = 0;
ySpeed = 0;
acceleration = 1;

attack = false;
attackMove = true;

follow = 0;
