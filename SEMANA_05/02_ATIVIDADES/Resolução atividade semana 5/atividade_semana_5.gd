extends Node2D

var teste = false
var valor = 0
#var número = 0 erro na declaração, não se pode usar acentos em variáveis
var numero = 0
#lista = [] erro por atribuir um valor a uma variável não declarada
var lista = Global.listaGlobal

func _ready():
	pass # Replace with function body.

func _process(delta):
	pass
		

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	#número = int(LineEdit.text) trocando variável corrigida anteriormente e não foi usado $ para se referenciar a um Nó
	numero = int($dadoUsuario.text) 
	lista.push_back(numero)
	#$LineEdit.text = nome tenta exibir nome ao invés dos valores numéricos da lista
	$resposta_2/label_resposta_2.text = String(lista)

func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário e exibindo na tela
	#for i in range(10): não itera pela lista, pode gerar erros ao ultrapassar o tamanho da lista
	for i in range(len(lista)):
		#Numero+=i deve se referenciar a um valor da lista como nomedalista[posicao] ou alterar a forma de iteração para passar por todos os valores da lista
		lista[i]+=1
		#lista.append(Numero) não é necessário acrescentar um valor a lista para incrementar os valores já existentes
	#$Label.text = numero exibe um número, não a lista completa
	$resposta_2/label_resposta_2.text = String(lista)

func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	var nome = $nomeUsuario.text
	
	#podemos utilizar o for ao invés de utilizar um while para iterar pelos elementos da lista
	for valor in lista:
		if(valor % 2 == 1):
			$resposta_4/label_resposta_4.text = nome+"baldo"
			return
	#ao iterar por todos e não encontrar um ímpar, exibe-se o nome
	$resposta_4/label_resposta_4.text = nome
	
	#while(len(lista)):
	#	cont=0 
	#	var cont = 0
	#	i=0
	#	if(lista[i]%2==1):
	#		cont+=1
	#	if(cont!=0):
	#		nome = nome+"baldo"
	#	$Label2.text = nome
	




