left=keyboard_check(vk_left)
right=keyboard_check(vk_right)

var movement=right-left
hsp=movement*wSpeed
vsp+=grv




if(place_meeting(x+hsp,y,oWall))
{
	 while(!place_meeting(x+sign(hsp),y,oWall))
	 {
		 x+=sign(hsp)
	 }
	 hsp = 0
}

if(place_meeting(x,y+vsp,oWall))
{
	 while(!place_meeting(x,y+sign(vsp),oWall))
	 {
		 y+=sign(vsp)
	 }
	 vsp = 0
}
if(hp<=0)
game_restart()
x+=hsp
y+=vsp