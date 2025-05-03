extends Node2D

func _ready():
	MusicBoque.stop()
	Lagokaronte.stop()
	Dungeon.play()
	

func _process(_delta):
	if Input.is_action_just_pressed("salir"):
		get_tree().quit()
		

func _on_salida_body_entered(_body):
	$ducha.play()
	await $ducha.finished
	Lagokaronte.play()
	Dungeon.stop()
	
