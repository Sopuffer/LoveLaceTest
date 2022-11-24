player_x = oPlayer.x
player_y = oPlayer.y

if(point_distance(x,y,player_x,player_y) < 200)
{
	path_end()
	mp_potential_step_object(player_x,player_y,3.5,false)
	
}

else if(path_index != Path1)
{
	mp_potential_step_object(start_x,start_y,3.5,false)
	if(abs(x-start_x) < 2 and abs (y-start_y) < 2)
		path_start(Path1, 2, path_action_reverse,false)
}










