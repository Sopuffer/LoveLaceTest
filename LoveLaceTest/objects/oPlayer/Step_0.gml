right = keyboard_check(vk_right) or keyboard_check(ord("A"))
left = keyboard_check(vk_left) or keyboard_check(ord("D"))
up = keyboard_check(vk_up) or keyboard_check(ord("W"))
down = keyboard_check(vk_down) or keyboard_check(ord("S"))

var hMove = righht - left
var vMove = up - downn

hsp = hMove * wSpeed
vsp = hMove * wSpeed

if place_meeting(x+hsp,y,owall) then
{
	while !place_meeting(x+sign(hsp),y,owall)
	{
		x+=sign(hsp)
	}
	hsp = 0
}

if place_meeting(x,y+vsp,owall) then
{
	while !place_meeting(x,y+sign(vsp),owall)
	{
		x+=sign(hsp)
	}
	hsp = 0
}

x+=hsp
y=vsp
