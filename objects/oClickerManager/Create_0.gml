/// @description Insert description here
// You can write your code in this editor
#macro currentCat categories[curCat]
curCat = selectedCategory.makeMoney;

money = 0;
researchPoints = 0;
suspicion = 0;
followers = 0;

maxWidth = oClickArea.sprite_width;
curWidth = 0;


changeCat = function(newCat){
	curCat = newCat;
	curWidth = (currentCat.progCur * maxWidth)/currentCat.progMax;
}


//Phyisical Clicks
click = function(value){
	currentCat.progCur += value;
	curWidth = (currentCat.progCur * maxWidth)/currentCat.progMax;
	if(currentCat.progCur >= currentCat.progMax){
		progressComplete();
	//potentially have rollover values later?
	}
}

progressComplete = function(){
	currentCat.progCur = 0;
	curWidth = (currentCat.progCur * maxWidth)/currentCat.progMax;
	currentCat.resource(10);
}

//Automatic Clicks 
autoClick = function(value, _cat){
	_cat.progCur += value;
	if(_cat.progCur >= _cat.progMax){
		autoProgressComplete(_cat);
	}
	if(array_get(categories, curCat) == _cat){
		curWidth = (currentCat.progCur * maxWidth)/currentCat.progMax;
	}
}

autoProgressComplete = function(_cat){
	_cat.progCur = 0;
	_cat.resource(10);
	if(array_get(categories, curCat) == _cat){
		curWidth = (currentCat.progCur * maxWidth)/currentCat.progMax;
	}
}

//AS splendid dandy as this is right now for automation, its just not going to cut it
//the moment I try and give an upgrade that handles unique automation speeds
//my thought is declaring multiple alarms in the struct? 
//or perhaps giving it some curtimer/maxtimer values to subtract and fuck with in the single alarm
function cat (resource, catProgMax) constructor{
  self.resource = resource;
  self.progCur = 0;
  self.progMax = catProgMax;
  self.automate = false;
  
}


moneyCat = new cat(
				function(value){
					money += value;
				}, 100
				);


researchCat = new cat(
				function(value){
					researchPoints += value;
				}, 100
				);


recruitingCat = new cat(
				function(value){
					followers += value;
				}, 100
				);



categories  = [moneyCat, researchCat, recruitingCat];

alarm[0] = room_speed;






