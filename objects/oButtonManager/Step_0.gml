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
	
}
/*	//Pickup code

		currentPayload = hoverCell.startDrag();
		dragCell = hoverCell;
		isDragging = true;
	}		
}
	
if(mouse_check_button_pressed(mb_right)){
	if(hoverCell != noone && hoverCell.containedItem != undefined){
		if(hoverCell.containedItem.lookUp.itemType == itemCat.equipment){
			//var inst = instance_create_layer(room_width/2, room_height/2, "Menus", oGearLvlUpMenu);
			//inst.giveItem(hoverCell.containedItem);
			//global.pause = true;
		}
	}
}
