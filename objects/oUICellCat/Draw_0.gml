/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
var text = "";
switch(selectedCat){
	case selectedCategory.makeMoney:
		text = "Munee";
		break;
	case selectedCategory.doResearch:
		text = "Research";
		break;
	case selectedCategory.recruitFollowers:
		text = "Recruit";
		break;
	case undefined:
		text = "error";
		break;
}

draw_text(x + sprite_width/2, y + 20, text);