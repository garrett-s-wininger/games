extends Area2D


@export var speed: float = 500


func _process(delta: float) -> void:
	move_local_x(delta * speed)


func _on_body_entered(_body: Node) -> void:
	queue_free()
