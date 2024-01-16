extends Node2D


var kill_count: int = 0


@onready 
var kill_count_label: Label = $UI/MarginContainer/VBoxContainer/HBoxContainer/KillCount


func _ready() -> void:
	kill_count_label.text = str(0)


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		$PauseMenu.show()
		get_tree().paused = true


func _on_enemy_enemy_downed() -> void:
	kill_count += 1
	kill_count_label.text = str(kill_count)
