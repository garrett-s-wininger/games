extends Button

func _on_pressed():
	# Take the user over to the settings menu scene so that they can adjust
	# any pertinent settings for their gaming experience.
	get_tree().change_scene_to_file("res://scenes/menus/settings_menu.tscn")
