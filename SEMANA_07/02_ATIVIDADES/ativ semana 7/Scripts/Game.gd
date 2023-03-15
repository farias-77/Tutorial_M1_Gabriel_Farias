extends Node2D

var cagePositions # variável que vai receber uma lista com as possíveis posições iniciais das gaiolas 
var enemy = preload("res://Scenes/Cage.tscn") # carrega a cena da gaiola ("inimigo" dentro do jogo)
var timer = Timer.new() # cria um timer para criar gradativamente as gaiolas

# Called when the node enters the scene tree for the first time.
func _ready():
	Global.pausedGame = false # altera o status do jogo quando é iniciado
	cagePositions = $cagesSpawn/spawnPositions.get_children() # captura as posições possíveis para as gaiolas
	
	#timer config
	timer.connect("timeout",self,"cage_spawn")
	timer.wait_time = 1
	add_child(timer)
	timer.start()
	
func cage_spawn():
	# Gera duas gaiolas a cada intervalo do timer no caso de o jogo não estar pausado
	if Global.pausedGame == false:
		Global.score += 1
		var randomIndex = randi() % cagePositions.size()
		var randomIndex2 = randi() % cagePositions.size()
		var cage = enemy.instance()	
		var cage2 = enemy.instance()
		cage.global_position = cagePositions[randomIndex].global_position
		cage2.global_position = cagePositions[randomIndex2].global_position
		add_child(cage)
		add_child((cage2))
