extends Node

const rock = preload("res://nodes/Rock.tscn")

var count = 0
func _ready():
 spawn()
 pass

func spawn():
 while true:
  randomize()
  var enemy = rock.instance()
  var pos = Vector2()
  pos.x = rand_range(125, get_viewport().get_visible_rect().size.x-125)
  pos.y = -52
  count+=1
  get_node("Score").set_text(str(count))

  if count == 10:
   get_tree().change_scene("res://nodes/Victory.tscn")

  enemy.set_position(pos)
  get_node("container").add_child(enemy)
  yield(get_tree().create_timer(rand_range(1, 2)), "timeout")
 pass
