extends Area2D



func _ready():
	Dungeon.play()
	MusicBoque.stop()
	Lagokaronte.stop()
	$AnimationPlayer.play("camino")




func _on_audio_stream_player_2d_finished():
	$Timer.start(5)
	


func _on_timer_timeout():
	$Timer.stop()
	$AudioStreamPlayer2D.play()
	
	

func _on_body_entered(body):
	if body.is_in_group("player"):
		$Timer.stop()
		$AudioStreamPlayer2D.stop()
		$SCREAMER.play()


		




func _on_screamer_finished():
	$AudioStreamPlayer2D.play()
	
