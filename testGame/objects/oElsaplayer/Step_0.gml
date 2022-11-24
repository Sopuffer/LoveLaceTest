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


if hsp!=0 and vsp==0 then sprite_index=sElsaWalk
else if(hp<=0)
{
 sprite_index=sElsaDeath
 image_speed = 1
}

else sprite_index=sElsaplayer

x+=hsp
y+=vsp