/// @description Insert description here
// You can write your code in this editor
maxBlood = 1000;
curBlood = 0;
curHeight = 0;
maxHeight = 576


spawnBlood = function(bloodCount){
	var inst = instance_create_layer(mouse_x, mouse_y, "Instances", oBloodSpawner);
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