// You can write your code in this editor
width = sprite_width;
height = sprite_height;
isHovered = false;
orderIndex = -1;

HoveredStart = new Delegate();
HoveredEnd = new Delegate();

HoveredStart.AddListener(function(){
	isHovered = true;
});

HoveredEnd.AddListener(function(){
	isHovered = false;
});