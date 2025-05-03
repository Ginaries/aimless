extends Node2D

func _ready():
	MusicBoque.play()
	Dungeon.stop()
	Lagokaronte.stop()
	

func _process(_delta):
	if Input.is_action_pressed("right"):
		get_tree().change_scene_to_file("res://escena/test.tscn")
	elif Input.is_action_pressed("left"):
		get_tree().quit()



func _on_button_mouse_entered():
	$AudioStreamPlayer.play()
	





func _on_button_mouse_exited():
	$AudioStreamPlayer.stop()
	


func _on_audio_stream_player_finished():
	$Timer.start(5)
	
	

func _on_timer_timeout():
	$AudioStreamPlayer.play()
	$Timer.stop()
