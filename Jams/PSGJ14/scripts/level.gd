extends Node2D

func _input(event):
	# On a cancel action, take the user to the pause menu where they should
	# be able to return to the main menu or exit out of the application altogether
	if event.is_action_pressed("ui_cancel"):
		$PauseMenu.show()
		get_tree().paused = true
