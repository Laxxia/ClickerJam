/// @description Insert description here
// You can write your code in this editor
money = 0;
researchPoints = 0;
suspicion = 0;
followers = 0;

maxWidth = oClickArea.sprite_width;
curWidth = 0;

catProgCur = 0;
catProgMax = 100;




click = function(value){
	catProgCur += value;
	curWidth = (catProgCur * maxWidth)/catProgMax;
	if(catProgCur >= catProgMax){
		progressComplete();
	//potentially have rollover values later?
	}
}

progressComplete = function(){
	catProgCur = 0;
	curWidth = (catProgCur * maxWidth)/catProgMax;
	money ++;
}