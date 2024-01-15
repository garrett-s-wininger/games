extends Node2D


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		$PauseMenu.show()
		get_tree().paused = true
