extends Node2D

var cagePositions
var enemy = preload("res://Scenes/Cage.tscn")
var timer = Timer.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	Global.pausedGame = false
	cagePositions = $cagesSpawn/spawnPositions.get_children()
	timer.connect("timeout",self,"cage_spawn")
	timer.wait_time = 1
	add_child(timer)
	timer.start()
	
func cage_spawn():
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
