extends CharacterBody2D

@export var speed := 200.0
@onready var hitbox: RectangleShape2D = $Area2D/CollisionShape2D.shape

func _physics_process(delta):
	velocity = speed * InputControl.vector("ui_left", "ui_right", "ui_up", "ui_down")
	move_and_slide()

func get_hit_range(hit_y: float) -> float:
	var top = global_position.y - hitbox.size.y/2.0
	var bottom = global_position.y + hitbox.size.y/2.0
	
	if hit_y < top:
		return -1.0
	if hit_y > bottom:
		return 1.0

	return 2.0 * ((hit_y - top)/(bottom - top) - 0.5)
