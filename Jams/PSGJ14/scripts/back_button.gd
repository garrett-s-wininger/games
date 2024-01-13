extends Control

func _on_pressed():
	# Return to the main menu, no other settings need to be changed
	get_tree().change_scene_to_file("res://scenes/menus/main_menu.tscn")
