delta_init()

Start = false

image_xscale = 3
image_yscale = 3

depth = -2

z = 10
dep = 0
animStartX = 1600
startx = 700
enddis = y + 95
startdis = y + 600
dis = 0.5

FailX = 0

x = animStartX

dis_force = 0

XspeeEl = 0
Xspeed = 0

start_height = -100
Show_height = 50
bounce_power = 0
bounce = 0
height = 0
height_speed = 0

y = 500

height_speed += (0.1 * sign(abs(bounce - 1))) + bounce
	
Xspeed -= XspeeEl
	
height += height_speed
Show_height = start_height + height

LeftBorder = {
StartX: 529,
EndX: 582,
}
RightBorder = {
StartX: 873,
EndX: 821,
}

Forward = true

Size = 3
