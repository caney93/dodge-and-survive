extends Node2D

var obstacle_scene = preload("res://obstacle.tscn")

func _on_spawn_timer_timeout():
	var obs = obstacle_scene.instantiate()
	obs.position.x = randf_range(50,1100)
	obs.position.y = -30
	add_child(obs)
