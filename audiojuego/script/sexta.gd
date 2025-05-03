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
	$"prota uwu".play()


func _on_timer_2_timeout():
	$Timer2.stop()
	$"una rata".play()

func _on_prota_uwu_finished():
	$Timer2.start(2)
