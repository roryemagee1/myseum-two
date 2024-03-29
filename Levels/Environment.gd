extends Node3D

@onready var gravity_player: CharacterBody3D = %GravityPlayer

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("rot_x_plus"):
		gravity_player.stored_rotation[0] += 90.0
		gravity_player.lock_to_level_rotator()
		rotation_degrees.x += 90.0
	if event.is_action_pressed("rot_x_minus"):
		gravity_player.stored_rotation[0] -= 90.0
		gravity_player.lock_to_level_rotator()
		rotation_degrees.x -= 90.0
	if event.is_action_pressed("rot_y_plus"):
		gravity_player.stored_rotation[1] += 90.0
		gravity_player.lock_to_level_rotator()
		rotation_degrees.y += 90.0
	if event.is_action_pressed("rot_y_minus"):
		gravity_player.stored_rotation[1] -= 90.0
		gravity_player.lock_to_level_rotator()
		rotation_degrees.y -= 90.0
	if event.is_action_pressed("rot_z_plus"):
		gravity_player.stored_rotation[2] += 90.0
		gravity_player.lock_to_level_rotator()
		rotation_degrees.z += 90.0
	if event.is_action_pressed("rot_z_minus"):
		gravity_player.stored_rotation[2] -= 90.0
		gravity_player.lock_to_level_rotator()
		rotation_degrees.z -= 90.0
		
