/// @description Insert description here
// You can write your code in this editor
draw_sprite_stretched(s_progBar, 0, oClickArea.x , oClickArea.y +(oClickArea.sprite_height) + 32, curWidth ,sprite_get_height(s_progBar)*2);
draw_text(oClickArea.x , oClickArea.y, currentCat.progCur);
draw_text(oClickArea.x , oClickArea.y + 10, currentCat.progMax);
draw_text(room_width/2, 10, "Munee: " + string(money));
draw_text(room_width/2, 20, "Recruits: " + string(followers));
draw_text(room_width/2, 30, "Research: " + string(researchPoints));