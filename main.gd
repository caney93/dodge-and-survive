extends Node2D

var obstacle_scene = preload("res://obstacle.tscn")
var score = 0

@onready var score_label = $ScoreLabel

func _process(delta):
	score += delta
	Global.score = score
	score_label.text = "Score: "  + str(int(score))
	$SpawnTimer.wait_time = max(0.1, 1.0 - score * 0.02)
	

func _on_spawn_timer_timeout():
	var obs = obstacle_scene.instantiate()
	obs.position.x = randf_range(50,1100)
	obs.position.y = -30
	add_child(obs)
