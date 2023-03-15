extends KinematicBody2D

var moveSpeed = 500; # velocidade base de movimentação do personagem

func _ready():
	pass


# Captura os inputs do usuário e move o personagem na respectiva direção, com verificação de fim de tela
func _physics_process(delta):
	if(Input.is_action_pressed(("ui_right"))):
		position.x += moveSpeed * delta
		if(position.x > 990):
			position.x = 990;
			
	if(Input.is_action_pressed(("ui_left"))):
		position.x -= moveSpeed * delta
		if(position.x < 55):
			position.x = 55;
