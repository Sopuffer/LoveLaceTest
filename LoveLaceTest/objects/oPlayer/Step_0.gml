right = keyboard_check(vk_right) or keyboard_check(ord("A"))
left = keyboard_check(vk_left) or keyboard_check(ord("D"))
up = keyboard_check(vk_up) or keyboard_check(ord("W"))
down = keyboard_check(vk_down) or keyboard_check(ord("S"))

var hMove = right - left
var vMove = down - up

hsp = hMove * wSpeed
vsp = vMove * wSpeed

if place_meeting(x+hsp,y,oWall,) then
{
	while !place_meeting(x+sign(hsp),y,oWall)
	{
		x+=sign(hsp)
	}
	hsp = 0
}

if place_meeting(x,y+vsp,oWall,) then
{
	while !place_meeting(x,y+sign(vsp),oWall)
	{
		y+=sign(vsp)
	}
	vsp = 0
}

x+=hsp
y+=vsp
