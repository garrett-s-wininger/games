extends CharacterBody2D


@export var speed: float = 200
@onready var animation_player: AnimationPlayer = $Sprite2D/AnimationPlayer


func _process(_delta):
	if Input.is_action_pressed("fire_primary"):
		animation_player.set_current_animation("firing")


func _physics_process(_delta: float):
	look_at(get_global_mouse_position())
	
	var facing_direction = Input.get_vector("left", "right", "up", "down")
	velocity = facing_direction * speed

	move_and_slide()
