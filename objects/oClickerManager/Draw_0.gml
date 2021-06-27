/// @description Insert description here
// You can write your code in this editor
draw_sprite_stretched(s_progBar, 0, oClickArea.x , oClickArea.y +(oClickArea.sprite_height) + 32, curWidth ,sprite_get_height(s_progBar)*2);
draw_text(oClickArea.x , oClickArea.y, currentCat.progCur);
draw_text(oClickArea.x , oClickArea.y + 10, currentCat.progMax);
draw_text(room_width/2, 10, "Munee: " + string(resources[resource.money]));
draw_text(room_width/2, 25, "Recruits: " + string(resources[resource.followers]));
draw_text(room_width/2, 40, "Research: " + string(resources[resource.research]));
draw_text(room_width/2, 55, "Suspicion: " + string(resources[resource.suspicion]));
draw_text(room_width/2, 70, "Current Group: " + currentCat.title);