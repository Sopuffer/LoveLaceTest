left=keyboard_check(vk_left) 
right=keyboard_check(vk_right)
up=keyboard_check(vk_up) 
down=keyboard_check(vk_down)

var movement=right-left
var vMovement = down-up
hsp=movement*wSpeed

vsp=vMovement * wSpeed
fire -= 0.1
angle= point_direction(x, y, mouse_x,mouse_y,)
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


x+=hsp
y+=vsp

if hp <= 0 then
{
	sprite_index = sEllenDeath
	image_speed = 1
}

