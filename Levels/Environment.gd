extends Node3D

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("one"):
		rotation_degrees.x += 90
