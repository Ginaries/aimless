extends Area2D



func _on_audio_stream_player_2d_finished():
	$Timer.start(5)
	

func _on_timer_timeout():
	$AudioStreamPlayer2D.play()
	
	


func _on_body_entered(_body):
	$"../distraccion".queue_free()
	$"../distraccion2".queue_free()
	$"../distraccion3".queue_free()
	$"../distraccion4".queue_free()
	$Timer.stop()
	$AudioStreamPlayer2D.stop()
	$"../CharacterBody2D".set_physics_process(false)
	$"../GATE_close".play()
	await $"../GATE_close".finished
	$"../narracionP".play()
	await $"../narracionP".finished
	$"../pasos caronte".play()
	await $"../pasos caronte".finished
	$"../narracionK".play()
	await $"../narracionK".finished
	$"../CharacterBody2D".set_physics_process(true)
	get_tree().change_scene_to_file("res://escena/sexta.tscn")
	
