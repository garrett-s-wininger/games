extends Control

func _on_pressed():
	# Exit out of the applicaiton on quit, user does
	# not want to continue any further
	get_tree().quit()
