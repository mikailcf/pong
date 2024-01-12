extends CharacterBody2D

@export var speed := 200.0

func _physics_process(delta):
	velocity = speed * InputControl.vector("ui_left", "ui_right", "ui_up", "ui_down")
	move_and_slide()
