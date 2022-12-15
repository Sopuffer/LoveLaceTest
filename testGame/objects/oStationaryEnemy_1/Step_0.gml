if(point_distance(x,y,oPlayer.x,oPlayer.y)<200)
attack =true

else attack = false
if attack then
{
	if(point_distance(x,y,oPlayer.x,oPlayer.y)<50 and !doattack)
	doattack = true
	else  mp_potential_step_object(oPlayer.x, oPlayer.y,3.5,oWall)
}
else 
 mp_potential_step_object(startx,starty,3.5,oWall)

if doattack then sprite_index = sEnemyattack
else sprite_index = sEnemy2829