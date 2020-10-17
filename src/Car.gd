extends KinematicBody2D

var speed = 150
var screensize

func _ready():
	screensize = get_viewport_rect().size

func _process(delta):
	var vel = Vector2()
	if Input.is_action_pressed("ui_right"):
		vel.x += speed
	elif Input.is_action_pressed("ui_left"):
		vel.x -= speed
	if vel.length() > 0:
		move_and_collide(vel * delta)
	position.x = clamp(position.x, 115, screensize.x - 115)
