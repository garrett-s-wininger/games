extends CanvasLayer


func return_to_game() -> void:
	"""
	Hides the pause menu and sets the game tree so that it is no longer paused,
	allowing the rest of game elements to resume their processing in the event
	loop
	"""
	hide()
	get_tree().paused = false


func _ready() -> void:
	hide()
	
	
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		return_to_game()
		get_viewport().set_input_as_handled()


func _on_resume_pressed() -> void:
	return_to_game()
