extends Node2D



func _ready():
	Lagokaronte.stop()
	Dungeon.stop()
	$"prota depierta".play()
	await $"prota depierta".finished
	$Timer.start(2)

	
	




func _process(_delta):
	if Input.is_action_just_pressed("salir"):
		get_tree().quit()




	


func _on_timer_timeout():
		$Timer.stop()
		$Mecanica.play()
		await $Mecanica.finished
