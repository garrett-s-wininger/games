extends CharacterBody2D


const Bullet: Resource = preload("res://scenes/projectiles/bullet.tscn")
const FIRING_ANIMATION: String = "firing"
@export var speed: float = 200
var can_fire: bool = true
@onready var animation_player: AnimationPlayer = $Sprite2D/AnimationPlayer


func _process(_delta) -> void:
	if Input.is_action_pressed("fire_primary") && can_fire:
		animation_player.play(FIRING_ANIMATION)
		can_fire = false
		
		var bullet_left = Bullet.instantiate()
		var bullet_right = Bullet.instantiate()
		get_parent().add_child(bullet_left)
		get_parent().add_child(bullet_right)
		
		bullet_left.position = $Sprite2D/ProjectileSpawnL.global_position
		bullet_right.position = $Sprite2D/ProjectileSpawnR.global_position
		bullet_left.rotation = rotation
		bullet_right.rotation = rotation


func _physics_process(_delta: float) -> void:
	look_at(get_global_mouse_position())
	
	var facing_direction = Input.get_vector("left", "right", "up", "down")
	velocity = facing_direction * speed

	move_and_slide()


func _on_animation_player_animation_finished(anim_name):
	if anim_name == FIRING_ANIMATION:
		can_fire = true
