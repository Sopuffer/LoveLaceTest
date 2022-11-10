left=keyboard_check(vk_left) 
right=keyboard_check(vk_right)
up=keyboard_check(vk_up) 
down=keyboard_check(vk_down)
var movement=right-left
var vMovement = down-up
hsp=movement*wSpeed
x+=hsp

vsp=vMovement * wSpeed

if(place_meeting(x+hsp,y,oWall))
{
	while(!place_meeting(x+hsp,y,oWall))
	{
		x+=sign(hsp)
	}
	hsp=0
}

if(place_meeting(x,y+vsp,oWall))
{
	while(!place_meeting(x,y+sign(vsp),oWall))
	{
		y+=sign(vsp)
	}
	vsp=0
}