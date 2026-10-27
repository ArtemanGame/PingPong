
Raketka.x = mouse_x
Raketka.y = mouse_y

Speedx = x - prev_x
Speedy = y - prev_y

var Balls = instance_place(x,y,Ball)

if place_meeting(x,y,Balls) and Can_Hit and ((Balls.startx = Balls.x) or Balls.Start){
	if Balls.dis <= 0.6 and Balls.image_xscale > 2 and Balls.image_xscale < 12 {
		Can_Hit = false
		alarm[2] = 1
		Balls.Start = true
		if Speedx < 10 {
			Speedx = Speedx * 4
		}
		if Speedy < 10 {
			Speedy = Speedy * 2
		}
		if Speedx > 400 {
			Speedx = Speedx / 2
		}
		if Speedy > 400 {
			Speedy = Speedy / 2
		}
		
		Balls.dis_force = (Balls.dis_force / 2) + max(0.6,(abs(Speedy / 150) + abs(Speedx / 150)) * 4)
		Balls.Forward = true
		Balls.bounce += 10 * sign(Balls.height)
		Balls.height_speed = 0
		Balls.XspeeEl = Speedx / 18
	}
}

if keyboard_check(ord("F")){
	show_message(Ball.height)
}