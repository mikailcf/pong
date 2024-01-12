extends AnimatableBody2D

const SPEED = 300.0
var _speed_modifier := 1.0
	
func _ready():
	constant_linear_velocity = Vector2(-SPEED, 0.0)

func _physics_process(delta):
	move_and_collide(constant_linear_velocity * delta)
	
func _on_area_2d_body_entered(body):
	if body.name == "Player":
		var x := constant_linear_velocity.x
		var y := body.get_hit_range(global_position.y) as float

		constant_linear_velocity = Vector2(-x, y * SPEED)

func _on_area_2d_area_entered(area: Node2D):
	var velx = constant_linear_velocity.x
	var vely = constant_linear_velocity.y
	
	if area.is_in_group("hor_bound"):
		constant_linear_velocity = Vector2(velx, -vely)
	if area.is_in_group("vert_bound"):
		constant_linear_velocity = Vector2(-velx, vely)
