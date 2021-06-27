/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
hoverCell = noone;
with(oUICellSlot){
	if(isHovered){
		other.hoverCell = self;
		break;
	}
}

if(mouse_check_button_pressed(mb_left)){
	if(hoverCell != noone){
		if(hoverCell.btnType == buttonType.category){
			oClickerManager.changeCat(hoverCell.selectedCat);
		}
		
		if(hoverCell.btnType == buttonType.upgrade){
			hoverCell.onClick();
		}
	}
}

if(mouse_check_button_pressed(mb_right)){
	if(hoverCell != noone){
		if(hoverCell.btnType == buttonType.category){
			oClickerManager.categories[hoverCell.selectedCat].automate = true;
		}
	}
}