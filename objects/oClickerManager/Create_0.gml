/// @description Insert description here
// You can write your code in this editor
#macro currentCat categories[curCat]
curCat = selectedCategory.makeMoney;

resources = [0,0,0,0,0];
enum resource{
	research = 0,
	money = 1,
	followers = 2,
	suspicion = 3,
	blood = 4
}

maxWidth = oClickArea.sprite_width;
curWidth = 0;


changeCat = function(newCat){
	curCat = newCat;
	curWidth = (currentCat.progCur * maxWidth)/currentCat.progMax;
}


//Phyisical Clicks
click = function(value){
	if(!currentCat.unlocked){exit;}
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
	currentCat.gainResource(10);
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
	_cat.gainResource(10);
	if(array_get(categories, curCat) == _cat){
		curWidth = (currentCat.progCur * maxWidth)/currentCat.progMax;
	}
}

//AS splendid dandy as this is right now for automation, its just not going to cut it
//the moment I try and give an upgrade that handles unique automation speeds
//my thought is declaring multiple alarms in the struct? 
//or perhaps giving it some curtimer/maxtimer values to subtract and fuck with in the single alarm
function cat (title, resource, catProgMax, unlocked) constructor{
  self.title = title;
  self.gainResource = resource;
  self.progCur = 0;
  self.progMax = catProgMax;
  self.automate = false;
  self.unlocked = unlocked
  
}


moneyCat = new cat(
				"Muhnee",
				function(value){
					resources[resource.money] += value;
				}, 100,  true
				);


researchCat = new cat(
				"Research",
				function(value){
					resources[resource.research] += value;
				}, 100, false
				);


recruitingCat = new cat(
				"Recruit",
				function(value){
					resources[resource.followers] += value;
				}, 100, false
				);

suspicionCat = new cat(
				"Lower Suspicion",
				function(value){
					resources[resource.suspicion] -= value;
					if (resources[resource.suspicion] <= 0){
						resources[resource.suspicion] = 0;
					}
				}, 100, false
				);
				
sacrificeCat = new cat(
				"Sacrifice",
				function(value){
					oBloodManager.spawnBlood(value);		
				}, 100, false
				);
				
				



categories  = [researchCat, moneyCat, recruitingCat, suspicionCat, sacrificeCat];

alarm[0] = room_speed;






