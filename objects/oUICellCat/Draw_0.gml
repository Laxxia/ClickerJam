/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
var text = "";
if(selectedCat != undefined){
	text = oClickerManager.categories[selectedCat].title;
} else {
	text = "error";
}

draw_text(x + sprite_width/2 - 45, y + 20, text);