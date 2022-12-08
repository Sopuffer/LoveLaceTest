player_x = oPlayer.x
player_y = oPlayer.y

if(point_distance(x,y,player_x,player_y) < 200)
{
	path_end()
	mp_potential_step_object(player_x,player_y,3.5,false)
	timer += 0.1
	
	angle = point_direction(x,y, oPlayer.x, oPlayer.y)
	if(timer>=maxtime){
		timer = 0
		with(instance_create_layer(x,y, "Instances", oFire))
		{
			speed = 25
			direction = other.angle
			image_angle = direction 
		}
	}
}

else if(path_index != Path1)
{
	mp_potential_step_object(start_x,start_y,3.5,false)
	if(abs(x-start_x) < 2 and abs (y-start_y) < 2)
		path_start(Path1, 2, path_action_reverse,false)
}










