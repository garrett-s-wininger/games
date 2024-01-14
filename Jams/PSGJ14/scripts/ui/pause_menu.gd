extends CanvasLayer

func _return_to_game():
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
	# Return to the game but also mark the input event as handled so that the
	# level does not also interpret the button press as a request to re-pause
	if event.is_action_pressed("ui_cancel"):
		_return_to_game()
		get_viewport().set_input_as_handled()

func _on_resume_pressed():
	_return_to_game()
