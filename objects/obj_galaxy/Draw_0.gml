
if !surface_exists(galaxy_surf) {
	galaxy_surf = surface_create(960, 540);
}
draw_surface(galaxy_surf, 0, 0);

draw_set_color(c_yellow);
draw_circle(sun_x, sun_y, 28, false);
draw_set_color(c_red);


var spd = 1;

planet_1_angle -= 3.5 * spd; if (planet_1_angle <= 0) planet_1_angle = 359;
planet_1_x = sun_x+lengthdir_x(planet_1_dist, planet_1_angle);
planet_1_y = sun_y+lengthdir_y(planet_1_dist, planet_1_angle);
draw_circle(planet_1_x, planet_1_y, 8, false);

planet_2_angle -= 1 * spd; if (planet_2_angle <= 0) planet_2_angle = 359;
planet_2_x = sun_x+lengthdir_x(planet_2_dist, planet_2_angle);
planet_2_y = sun_y+lengthdir_y(planet_2_dist, planet_2_angle);
draw_circle(planet_2_x, planet_2_y, 8, false);

timer += 1;
if (timer % 5 == 0) {
	surface_set_target(galaxy_surf);
	draw_set_color(c_white);
	draw_line(planet_1_x, planet_1_y, planet_2_x, planet_2_y);
	surface_reset_target();
}
