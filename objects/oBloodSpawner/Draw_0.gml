/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < ds_list_size(particle_list); i++){
    with (particle_list[| i]){
        draw_sprite_ext(other.particle_sprite, 0, x, y, 1, 1, 0, c_white, alpha);
    }
}