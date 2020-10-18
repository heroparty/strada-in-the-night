extends Button



func _button_pressed():
	get_tree().change_scene("res://nodes/World.tscn")

func _ready():
	var button = Button.new()
	button.text = "Restart"
	button.connect("pressed", self, "_button_pressed")
	add_child(button)
	pass
