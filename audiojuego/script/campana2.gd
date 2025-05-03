extends Area2D



func _activo():
	$AudioStreamPlayer2D.play()
	

func _on_audio_stream_player_2d_finished():
	$Timer.start(10)
	


func _on_timer_timeout():
	$AudioStreamPlayer2D.play()
