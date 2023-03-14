extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.score = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Play_pressed():
	return get_tree().change_scene("res://Scenes/Game.tscn")


func _on_Tutorial_pressed():
	return get_tree().change_scene("res://Scenes/Tutorial.tscn")
