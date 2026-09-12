extends CharacterBody2D

@export var move_speed: float = 100.0
var screen_size: Vector2

func _ready() -> void:
	screen_size = get_viewport_rect().size

func _physics_process(delta: float) -> void:
	
	var direction: Vector2 = Vector2.ZERO
	
	if Input.is_action_pressed("left") and Input.is_action_pressed("right"):
		pass
	elif Input.is_action_pressed("left"):
		direction = Vector2.LEFT
	elif Input.is_action_pressed("right"):
		direction = Vector2.RIGHT
		
	velocity = direction * move_speed
	
	move_and_slide()
	
	if position.x < 0 + 8: 
		position.x = 0 + 8
		
	if position.x > 320 - 8:
		position.x = 320 - 8
		
