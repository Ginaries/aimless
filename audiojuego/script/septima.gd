extends Node2D

func _ready():
	MusicBoque.stop()
	Lagokaronte.stop()
	Dungeon.play()
	$Timer.start(2)




func _process(_delta):
	if Input.is_action_just_pressed("salir"):
		get_tree().quit()




func _on_timer_timeout():
	$Timer.stop()
	$"vuelve rata".play()
	await $"vuelve rata".finished
	$Timer2.start(3)

func _on_timer_2_timeout():
	$Timer2.stop()
	$"otra moneda".play()
	
