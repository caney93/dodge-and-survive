extends Area2D

var speed = randf_range(500, 800)

func _process(delta):
	position.y += speed * delta
