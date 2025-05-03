extends Area2D






func _on_audio_stream_player_2d_finished():
	$Timer.start(5)

func _on_timer_timeout():
	$AudioStreamPlayer2D.play()
	

func _on_body_entered(body):
	if body.is_in_group("player"):
		$Timer.stop()
		$AudioStreamPlayer2D.stop()
		$"../CharacterBody2D".set_physics_process(false)
		$"../prota que extraña moneda".play()
		await $"../prota que extraña moneda".finished
		$"../Caronte hey por aqui".play()
		await $"../Caronte hey por aqui".finished
		$"../CharacterBody2D".set_physics_process(true)
		get_tree().change_scene_to_file("res://escena/tercera_parte.tscn")
		
