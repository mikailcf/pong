extends Node2D

const speed := 5.0

func _input(event):
	if event.is_action("ui_up"):
		$Icon.global_position.y -= speed
	if event.is_action("ui_down"):
		$Icon.global_position.y += speed
