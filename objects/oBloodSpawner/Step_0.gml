/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < ds_list_size(particle_list); i++){

    with (particle_list[| i]){
        // apply gravity
        vsp = min(grav_max, vsp + grav);

        // this line just slows the hsp gradually towards 0 so that the particles dont keep moving horizontally forever
        if (abs(hsp) <= 0.1) hsp = 0; else hsp = hsp * 0.95; 
        
        x += hsp;
        y += vsp;

        // fade out
       // alpha = max(0, alpha - fade_speed);

        // destroy this particle if alpha reached
       /* if (alpha <= 0){
            ds_list_delete(other.particle_list, i);
            i-=1;
            continue;
        }*/
		
		if(collision_point(x, y, oWall,false,false) || y > oBloodManager.getFillLine() ){
			oBloodManager.fill();
			ds_list_delete(other.particle_list, i);
            i-=1;
            continue;
		}
        
    }
}

if (ds_list_size(particle_list) == 0){
    ds_list_destroy(particle_list);
    instance_destroy();
}