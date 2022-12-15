if point_distance(x,y,oPlayer.x,oPlayer.y)<200 then
	mp_potential_step_object(oPlayer.x,oPlayer.y,3.5,oWall)
else
	mp_potential_step_object(startx,starty,2.5,oWall)
