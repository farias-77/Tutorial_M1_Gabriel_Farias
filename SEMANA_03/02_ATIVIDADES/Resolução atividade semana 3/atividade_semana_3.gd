extends Node2D



func _ready():
	pass # Replace with function body.

func _process(delta):
	pass


func _on_button_1_pressed():
	var listaPreenchida = [1, 2, 3, 4, 5]
	$resposta_1/label_resposta_1.text = String(listaPreenchida)


func _on_button_2_pressed():
	var listaVazia = []	
	listaVazia.push_back($dadoUsuario1.text if $dadoUsuario1.text else "não informado")
	listaVazia.push_back($dadoUsuario2.text if $dadoUsuario2.text else "não informado")
	listaVazia.push_back($dadoUsuario3.text if $dadoUsuario3.text else "não informado")
	$resposta_2/label_resposta_2.text = String(listaVazia)


func _on_button_3_pressed():
	var text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
	$resposta_3/label_resposta_3.text = text


func _on_button_4_pressed():
	var value = $valorUsuario.text
	$valorUsuario/Label.text = "Informe um número"

	if(int(value)):
		$resposta_4/label_resposta_4.text = value
	else:
		$valorUsuario/Label.text = "Por favor, informe um número"
		$resposta_4/label_resposta_4.text = ""
		
