extends KinematicBody2D

var speed = 275
var screensize

func _ready():
	screensize = get_viewport_rect().size

func _process(delta):
	var vel = Vector2()
	vel.y += speed
	if vel.length() > 0:
		var info = move_and_collide(vel * delta)
		if info:
			if ('Car' in info.get_collider().name):
				$audioAcidente.play()
				hide()
				#gameoverscreen.show()
				#contador.parar()
				#xesque.delhe()
