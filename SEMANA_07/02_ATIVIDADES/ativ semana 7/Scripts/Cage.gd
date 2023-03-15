extends Area2D

var cageSpeed = 5 # Velocidade de queda das gaiolas

func _ready():
	pass

# Faz a gaiola cair com base na velocidade
func _physics_process(delta):
	position.y += cageSpeed

# Para o jogo no caso de uma gaiola bater no personagem e redireciona para a tela de game over
func _on_Cage_body_entered(body):
	Global.pausedGame = true
	return get_tree().change_scene("res://Scenes/GameOver.tscn")
