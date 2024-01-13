extends Node2D

func _process(_delta):
	# Exit the game on an escpae press
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()
