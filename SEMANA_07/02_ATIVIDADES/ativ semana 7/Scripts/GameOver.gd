extends Node2D

# Exibe a pontuação do usuário na tela de gameover
func _ready():
	$Label.text = "Você fez " + str(Global.score) + " pontos!"
	
# Botão que redireciona para o menu inicial
func _on_Button_pressed():
	return get_tree().change_scene("res://Scenes/Menu.tscn")
