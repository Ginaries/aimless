extends Node2D


func _ready():
	$Timer.start(3)
	MusicBoque.stop()
	Lagokaronte.stop()
	Dungeon.play()
	

func _process(_delta):
	if Input.is_action_just_pressed("salir"):
		get_tree().quit()




func _on_timer_timeout():
	$Timer.stop()
	$"Prota silencio".play()
	await $"Prota silencio".finished
