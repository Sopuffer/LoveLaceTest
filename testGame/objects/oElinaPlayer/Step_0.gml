left=keyboard_check(vk_left)
right=keyboard_check(vk_right)

var movement=right-left
hsp=movement*wSpeed
vsp+=g

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
x+=hsp	
y+=vsp

//Animations
if isattacking then {
sprite_index=sElinaAttack
}

else if hsp!=0 and vsp==0 then {
	if hsp<0 then image_xscale=-2.36
	else image_xscale=2.36
	sprite_index = sElinaWalk
	image_speed=1
	}

else sprite_index=sElinaPlayer


if hp <=0 then
game_restart()
