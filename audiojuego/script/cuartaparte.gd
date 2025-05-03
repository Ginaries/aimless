extends Node2D


func _ready():
	$Timer.start(3)
	MusicBoque.stop()
	Lagokaronte.play()
	Dungeon.stop()
	
	
	
func _process(_delta):
	if Input.is_action_just_pressed("salir"):
		get_tree().quit()




func _on_timer_timeout():
	$Timer.stop()
	$"porq debo confiar".play()
	await $"porq debo confiar".finished
