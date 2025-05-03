extends Node2D

func _ready():
	MusicBoque.stop()
	Lagokaronte.play()
	Dungeon.stop()
	$"prota espera voy".play()
	await $"prota espera voy".finished
	

func _process(_delta):
	if Input.is_action_just_pressed("salir"):
		get_tree().quit()
