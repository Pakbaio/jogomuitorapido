var moveh = - keyboard_check(ord("A")) + keyboard_check(ord("D"))
var ground = place_meeting(x,y + 1, oColision)


#region // movimentação
	hspd = moveh * mx_hspd

	if (ground){
		vspd = 0;
	
	}else{
		vspd += gravidade * massa 
	}
#endregion

#region // sprites 

if (hspd != 0){
	sprite_index = sPlayerWalk
	image_xscale = sign(hspd)
}else{
	sprite_index = sPlayerIdle
}

#endregion