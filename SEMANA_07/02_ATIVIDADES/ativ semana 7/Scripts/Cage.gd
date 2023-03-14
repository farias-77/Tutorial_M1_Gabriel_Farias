extends Area2D

var velocity = 5	

func _ready():
	pass

func _physics_process(delta):
	position.y += velocity

func _on_Cage_body_entered(body):
	Global.pausedGame = true
	return get_tree().change_scene("res://Scenes/GameOver.tscn")
