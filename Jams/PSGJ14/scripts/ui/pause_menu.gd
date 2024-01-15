extends CanvasLayer


func return_to_game():
	"""
	Hides the pause menu and sets the game tree so that it is no longer paused,
	allowing the rest of game elements to resume their processing in the event
	loop
	"""
	hide()
	get_tree().paused = false


func _ready():
	hide()
	
	
func _input(event: InputEvent):
	if event.is_action_pressed("ui_cancel"):
		return_to_game()
		get_viewport().set_input_as_handled()


func _on_resume_pressed():
	return_to_game()
