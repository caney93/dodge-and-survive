extends Node2D

@onready var score_label = $ScoreLabel

func _ready():
	score_label.text = "Score: " + str(int(Global.score))

func _on_restart_button_pressed():
	Global.score = 0
	get_tree().change_scene_to_file("res://main.tscn")
