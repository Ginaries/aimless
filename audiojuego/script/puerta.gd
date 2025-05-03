extends Area2D


func _on_audio_stream_player_2d_finished():
	$Timer.start(5)
	

func _on_timer_timeout():
	$Timer.stop()
	$AudioStreamPlayer2D.play()
	


func _on_body_entered(_body):
	$Timer.stop()
	$AudioStreamPlayer2D.stop()
	get_tree().change_scene_to_file("res://escena/quinta_parte.tscn")
	
