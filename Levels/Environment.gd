extends Node3D

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("rot_x_plus"):
		rotation_degrees.x += 90
	if event.is_action_pressed("rot_x_minus"):
		rotation_degrees.x -= 90
	if event.is_action_pressed("rot_y_plus"):
		rotation_degrees.y += 90
	if event.is_action_pressed("rot_y_minus"):
		rotation_degrees.y -= 90
		
	#if event.is_action_pressed("rot_z_plus"):
		#rotation_degrees.z += 90
	#if event.is_action_pressed("rot_z_minus"):
		#rotation_degrees.z -= 90
		
