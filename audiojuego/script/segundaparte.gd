extends Node2D


func _ready():
	Lagokaronte.stop()
	Dungeon.stop()
	$inicio.start(2)
	
	


func _process(_delta):
	if Input.is_action_just_pressed("salir"):
		get_tree().quit()


func _on_inicio_timeout():
	$inicio.stop()
	$"prota una moneda".play()
	await $"prota una moneda".finished
