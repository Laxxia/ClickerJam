/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
#macro curUpgrade oUpgradeManager.upgradeGroups[oClickerManager.curCat][orderIndex]
onClick = function(){
	//Check for the purchasability
	curUpgrade.onPurchase();
}