left=keyboard_check(vk_left)
right=keyboard_check(vk_right)
up=keyboard_check(vk_up)
down=keyboard_check(vk_down)

var hDirection=right-left
var vDirection=down-up

hsp=hDirection*wSpeed
vsp=vDirection*wSpeed
if place_meeting(x+hsp,y,oWall)then
{
	while !place_meeting(x+sign(hsp),y,oWall)
	{
		x+=sign(hsp)
	}
	hsp=0
}
if place_meeting(x,y+vsp,oWall)then
{
	while !place_meeting(x,y+sign(vsp),oWall)
	{
		y+=sign(vsp)
	}
	vsp=0
}
x+=hsp
y+=vsp
