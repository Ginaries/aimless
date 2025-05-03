extends Area2D



func _on_audio_stream_player_2d_finished():
	$Timer.start(3)
	
	
	

func _on_timer_timeout():
	$Timer.stop()
	$AudioStreamPlayer2D.play()
	


func _on_body_entered(_body):
	$Timer.stop()
	$AudioStreamPlayer2D.stop()
	$"../CharacterBody2D".set_physics_process(false)
	$"../te encontre".play()
	await $"../te encontre".finished
	$"../CharacterBody2D".set_physics_process(true)
	get_tree().change_scene_to_file("res://escena/octava_final.tscn")
	
	
