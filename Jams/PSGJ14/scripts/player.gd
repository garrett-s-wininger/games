extends CharacterBody2D

const SPEED = 300.0

func _physics_process(_delta):
	velocity = Input.get_vector("left", "right", "up", "down") * SPEED
	move_and_slide()
	look_at(get_global_mouse_position())
