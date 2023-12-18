//sistema de colisão 

var _x = sign(hspd)
var _y = sign(vspd)

repeat(abs(hspd)){
	if (place_meeting(x + _x,y,oColision)){
		hspd = 0 
		break;
	}
		x += _x
}
repeat(abs(vspd)){
	if (place_meeting(x,y + _y,oColision)){
		vspd = 0 
		break;
	}
		y += _y
}