extends Area2D


func _ready():
	$Timer3.start(4)
	


func _on_body_entered(_body):
	$Timer.stop()
	$Timer2.stop()
	$Timer3.stop()
	$Loop.stop()
	$AudioStreamPlayer2D.stop()
	$AudioStreamPlayer2D2.stop()
	$"loop por aqui".stop()
	$"../CharacterBody2D".set_physics_process(false)
	$"../Narrador".play()
	await $"../Narrador".finished
	$"../CharacterBody2D".set_physics_process(true)
	get_tree().change_scene_to_file("res://escena/cuartaparte.tscn")






func _on_timer_timeout():
	$Timer.stop()
	$"loop por aqui".play()
	


func _on_audio_stream_player_2d_2_finished():
	$Timer.start(10)
	


func _on_audio_stream_player_2d_finished():
	$Timer2.start(10)
	

func _on_timer_2_timeout():
	$Timer2.stop()
	$AudioStreamPlayer2D.play()
	


func _on_timer_3_timeout():
	$Timer3.stop()
	$AudioStreamPlayer2D2.play()


func _on_loop_por_aqui_finished():
	$Loop.start(5)


func _on_loop_timeout():
	$Loop.stop()
	$"loop por aqui".play()
