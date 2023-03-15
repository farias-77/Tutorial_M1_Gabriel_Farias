extends Label

func _ready():
  pass

# Exibe a pontuação do usuário durante o jogo
func _process(delta):
	set_text("Pontuação: " + str(Global.score))
