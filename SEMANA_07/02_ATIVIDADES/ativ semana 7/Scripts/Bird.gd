extends KinematicBody2D

var moveSpeed = 500;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if(Input.is_action_pressed(("ui_right"))):
		position.x += moveSpeed * delta
		if(position.x > 990):
			position.x = 990;
			
	if(Input.is_action_pressed(("ui_left"))):
		position.x -= moveSpeed * delta
		if(position.x < 55):
			position.x = 55;
