left=keyboard_check(vk_left)
right=keyboard_check(vk_right)
down=keyboard_check_direct(vk_down)
up=keyboard_check(vk_up)

var hDirection=right-left
var vDirection=down-up 

hsp=hDirection * wSpeed
vsp=vDirection*wSpeed

if(place_meeting(x+sign(hsp),y,Owall))
{ 
	while(!place_meeting(x+sign(hsp),y,Owall))
	{
		x+=sign(hsp)
	}
	hsp=0
}
if(place_meeting(x,y+vsp,Owall))
{ 
	while(!place_meeting(x,y+sign(vsp),Owall))
	{
		y+=sign(vsp)
	}
	vsp=0
}

x+=hsp
y+=vsp















