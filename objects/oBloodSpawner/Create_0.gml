/// @description Insert description here
// You can write your code in this editor



particle_list = ds_list_create();
particle_sprite = s_bloodDrop; // <--- insert a real sprite here for the particle


instantiate = function(_particle_count){
	particle_count = _particle_count;
	for (var i = 0; i < particle_count; i++){
		particle_list[| i] = {
		    x: x + random_range(-125,125),
		    y: y + random_range(-25,25),
		    hsp: random_range(-4, 4),
		    vsp: random_range(-5, -1),
		    grav: random_range(0.15, 0.35),
		    grav_max: random_range(4,5)
		}
	}
}