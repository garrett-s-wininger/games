extends CanvasLayer

func _ready():
	hide()
	
func _input(event):
	# Hide ourselves, unpause, and mark input as handled so we don't get into a loop of triggering
	# the pause menu, this will allow game actions to resume for the player if they want to get
	# back to the game
	if event.is_action_pressed("ui_cancel"):
		hide()
		get_tree().paused = false
		get_viewport().set_input_as_handled()
