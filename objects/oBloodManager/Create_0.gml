/// @description Insert description here
// You can write your code in this editor
#macro curBlood oClickerManager.resources[resource.blood]

maxBlood = 10000;
curHeight = 0;
maxHeight = 800//576


spawnBlood = function(bloodCount){
	var inst = instance_create_layer(x + 384/2, y - maxHeight - 30, "Instances", oBloodSpawner);
	inst.instantiate(bloodCount);
}

fill = function(){
	curBlood++;
	curHeight = (curBlood * maxHeight)/maxBlood;
	if(curHeight > maxHeight){
		curHeight = maxHeight;
	}
}

getFillLine = function(){
	return (y + 32 - curHeight);
}