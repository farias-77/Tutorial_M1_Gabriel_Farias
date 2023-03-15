extends Node2D

func _ready():
	pass

# Botão redireciona para o menu inicial
func _on_Button_pressed():
	return get_tree().change_scene("res://Scenes/Menu.tscn")
