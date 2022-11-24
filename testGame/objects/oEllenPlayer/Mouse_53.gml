if(fire < 0)
{
	fire = fire_delay 
	instance_create_layer(x,y, "Mouth", oMouth)
	with(instance_create_layer(x,y, "Instances", oEllenWeapon))
	{
		speed = 25
		direction = other.angle
		image_angle = direction
	}
}