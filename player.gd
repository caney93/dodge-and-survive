extends Area2D

var speed = 500

func _process(delta):
	var direction = Vector2.ZERO
	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1
	position += direction.normalized() * speed * delta


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("obstacle"):
		get_tree().change_scene_to_file("res://game_over.tscn")
