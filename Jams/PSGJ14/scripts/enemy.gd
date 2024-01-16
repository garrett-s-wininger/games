extends AnimatableBody2D


signal enemy_downed


@export var health: int = 100


func take_damage(damage: int) -> void:
	health -= damage
	
	if health <= 0:
		emit_signal("enemy_downed")
		queue_free()


func _process(_delta):
	look_at(get_parent().get_node("Player").global_position)

