extends AnimatableBody2D

const SPEED = 300.0
	
func _ready():
	constant_linear_velocity = Vector2(SPEED, 0.0)

func _physics_process(delta):
	move_and_collide(constant_linear_velocity * delta)

func _on_area_2d_area_entered(area):
	pass # Replace with function body.
