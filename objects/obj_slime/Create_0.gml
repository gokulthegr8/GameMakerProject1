defaultImageSpeed = image_speed;
image_index = random_range(0,image_number);
red_p= random_range(0.8, 1);
gre_p= random_range(0, 0.5);
blu_p= random_range(0, 1);
sh_color= shader_get_uniform(shader1, "Color");


xSpeed = 0;
ySpeed = 0;
acceleration = 1;

attack = false;
attackMove = true;

follow = 0;
