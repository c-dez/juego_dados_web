extends Node2D

var rng := RandomNumberGenerator.new()
var dado_1: int = 0
var dado_2: int = 0
var dado_3: int = 0

var label_1: Label
var label_2: Label
var label_3: Label

var text_label :Label


func _ready() -> void:
	label_1 = get_node("Label")
	label_2 = get_node("Label2")
	label_3 = get_node("Label3")
	text_label = get_node("TextLabel")
	text_label.text= "PRESS ENTER! =)"
	pass


func _physics_process(_delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		label_1.text = str(tirar_dados())
		label_2.text = str(tirar_dados())
		label_3.text = str(tirar_dados())


func tirar_dados(caras_dado: int = 6) -> int:
	#default es 6 pero se puede dar parametro(caras_dado) para cualquier tamano de dado
	var valor: int = rng.randi_range(1, caras_dado)
	return valor
