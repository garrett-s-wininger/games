extends CharacterBody2D


signal enemy_downed


@export var health: int = 100
@export var speed: float = 200
@onready var navigation_agent: NavigationAgent2D = $NavigationAgent2D
@onready var player_data: Node = get_node("/root/PlayerData")


func take_damage(damage: int) -> void:
	health -= damage
	
	if health <= 0:
		emit_signal("enemy_downed")
		queue_free()


func actor_setup() -> void:
	await get_tree().physics_frame
	update_target_position()


func update_target_position() -> void:
	navigation_agent.target_position = player_data.player_position


func _ready() -> void:
	call_deferred("actor_setup")


func _process(_delta: float) -> void:
	update_target_position()


func _physics_process(_delta: float) -> void:
	if navigation_agent.is_navigation_finished():
		look_at(player_data.player_position)
		return
		
	var current_position: Vector2 = global_position
	var next_path_position: Vector2 = navigation_agent.get_next_path_position()
	look_at(next_path_position)
	
	velocity = current_position.direction_to(next_path_position) * speed
	move_and_slide()
