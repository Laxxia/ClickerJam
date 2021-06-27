/// @description Insert description here
// You can write your code in this editor
function upgrade (title, cost, costType, onPurchase) constructor{
  self.title = title;
  self.cost = cost;
  self.costType = costType;
  self.onPurchase = onPurchase;
  self.purchased = false;
}

research0 = new upgrade(
				"Library Pass",
				10, resource.money,
				function(){
					oClickerManager.categories[selectedCategory.doResearch].unlocked = true;
				}
);

money0 = new upgrade(
				"Bigger Wallet",
				10, resource.money,
				function(){
					oClickerManager.categories[selectedCategory.makeMoney].unlocked = true;
				}
);

suspicion0 = new upgrade(
				"Pay off a Cop",
				10, resource.money,
				function(){
					oClickerManager.categories[selectedCategory.lowerSuspicion].unlocked = true;
				}
);

recruit0 = new upgrade(
				"Hand out Pamphlets",
				10, resource.money,
				function(){
					oClickerManager.categories[selectedCategory.recruitFollowers].unlocked = true;
				}
);

sacrifice0 = new upgrade(
				"Use the basement",
				10, resource.money,
				function(){
					oClickerManager.categories[selectedCategory.sacrifice].unlocked = true;
				}
);


research = [research0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1];
money = [money0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1];
suspicion = [suspicion0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1];
recruit = [recruit0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1];
sacrifice = [sacrifice0,-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1];

upgradeGroups = [research, money, recruit, suspicion, sacrifice];