if fire<0 then{
	fire=maxDelay
	with(instance_create_layer(x,y,"Instances",oElsaBullet))	 
	{
		speed=25
		image_angle=other.image_angle
		direction=image_angle
	}
}














