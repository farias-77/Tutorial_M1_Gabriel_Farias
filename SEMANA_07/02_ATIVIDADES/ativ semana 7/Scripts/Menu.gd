extends Node2D


# Inicia o jogo com a pontuação zerada
func _ready():
	Global.score = 0

# Configura botão para redirecionar para o jogo em si
func _on_Play_pressed():
	return get_tree().change_scene("res://Scenes/Game.tscn")

# Configura botão para redirecionar para a tela de tutorial
func _on_Tutorial_pressed():
	return get_tree().change_scene("res://Scenes/Tutorial.tscn")
