currentPayload = undefined;
hoverCell = noone;

upgradeGroup = noone;
categoryGroup = noone;


upgradeGroup = new cellGroup(oUICellUpgrade);
categoryGroup = new cellGroup(oUICellCat);

enum selectedCategory{
	makeMoney = 0,
	doResearch  = 1,
	recruitFollowers = 2
}

enum buttonType{
	category,
	upgrade
}