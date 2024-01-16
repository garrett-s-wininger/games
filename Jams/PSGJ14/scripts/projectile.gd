extends Area2D


@export var damage: int = 10
@export var speed: float = 500


func _process(delta: float) -> void:
	move_local_x(delta * speed)


func _on_body_entered(body: Node) -> void:
	if body.has_method("take_damage"):
		body.take_damage(damage)
	
	queue_free()
