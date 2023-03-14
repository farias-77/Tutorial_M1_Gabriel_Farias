extends Label

func _ready():
  pass

func _process(delta):
	set_text("Pontuação: " + str(Global.score))
