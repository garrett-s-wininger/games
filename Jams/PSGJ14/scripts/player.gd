extends CharacterBody2D

@export var speed: float = 200

func _physics_process(_delta: float):
	look_at(get_global_mouse_position())
	
	var facing_direction = Input.get_vector("left", "right", "up", "down")
	velocity = facing_direction * speed

	move_and_slide()
