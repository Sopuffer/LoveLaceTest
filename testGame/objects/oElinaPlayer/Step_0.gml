left=keyboard_check(vk_left)
right=keyboard_check(vk_right)

var movement=right-left
hsp=movement*wSpeed
vsp+=g

if(place_meeting(x+hsp,oWall))
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		x+=sign(hsp)
	}
	hsp = 0
}	
	
if(place_meeting(x,y+vsp,oWall))
{
	while(!place_meeting(x,y+sign(vsp),y,oWall))
	{
		x+=sign(vsp)
	}
	vsp = 0
}
x+=hsp	
y+=vsp
