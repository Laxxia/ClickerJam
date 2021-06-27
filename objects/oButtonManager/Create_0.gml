currentPayload = undefined;
hoverCell = noone;

upgradeGroup = noone;
categoryGroup = noone;


upgradeGroup = new cellGroup(oUICellUpgrade);
categoryGroup = new cellGroup(oUICellCat);

enum selectedCategory{
	doResearch  = 0,
	makeMoney = 1,
	recruitFollowers = 2,
	lowerSuspicion = 3,
	sacrifice = 4
}

enum buttonType{
	category,
	upgrade
}