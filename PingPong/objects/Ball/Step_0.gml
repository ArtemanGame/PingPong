if Start {
	
	if dis_force > 0{
	dis_force -= 0.001
	} else {dis_force = 0}
	
	if Forward = true {
	dis += 0.005 * dis_force
	if dis >= 1  and x > LeftBorder.EndX and x < RightBorder.EndX and y > 0{
		Forward = false
		dis_force = dis_force / 1.2
		if dis_force < 1 {
			dis_force = 0
		}
	}
	} else {
		dis -= 0.005 * dis_force
	}
	
	if bounce_power > 0.055 {
	bounce_power -= 1
	bounce += (bounce_power * 3.8) * dis_force
	} else 
		{
			bounce_power = 0
			bounce = 0
		}
	height_speed += (0.1 * sign(abs(bounce - 1))) + bounce
	
	Xspeed -= XspeeEl + FailX
	
	height += height_speed
	Show_height = start_height + height
	
	y = lerp(startdis,enddis,dis) + Show_height
	x = startx - Xspeed

} else {
		if startx < x - 15 {
		x = lerp(startx,x,(startx / x))
		} else x = startx
	}

	if y >= lerp(startdis,enddis,dis) and y < lerp(startdis,enddis,0.4) and x > lerp(LeftBorder.StartX,LeftBorder.EndX,dis) and x < lerp(RightBorder.StartX,RightBorder.EndX,dis) {
		bounce_power = abs(height_speed) / 10
		height_speed = 0
		dis_force = dis_force -0.0005
		if dis_force < 0.1 and height {
			FailX += 1
		}
	}



image_xscale = 3 + (3 * (1 - dis)) + 1.5 * (-Show_height / 100)
image_yscale = 3 + (3 * (1 - dis)) + 1.5 * (-Show_height / 100)

if image_xscale <= 0 or image_yscale <= 0 or image_xscale > 12 {
	instance_create_layer(x, y, layer_get_id("Instances"), Sparkle)
	instance_create_layer(608, 192, layer_get_id("Instances"), Ball)
	instance_destroy(self)
}