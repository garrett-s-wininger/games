extends Control

func _on_pressed():
	# User would like to start the game, we should load into the first
	# level scene to get everything up and running.
	get_tree().change_scene_to_file("res://level1.tscn")