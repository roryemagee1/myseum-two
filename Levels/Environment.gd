extends Node3D

@onready var gravity_player: CharacterBody3D = %GravityPlayer

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("rot_x_plus"):
		gravity_player.lock_to_level_rotator()
		#rotation_degrees.x += 90.0
		rotate_object_local(Vector3(1, 0, 0), PI/2)
		gravity_player.last_rotation = [Vector3(1, 0, 0), PI/2]
		#rotate_object_local(gravity_player.global_position.normalized(), PI/2)
		transform.orthonormalized()
	if event.is_action_pressed("rot_x_minus"):
		gravity_player.lock_to_level_rotator()
		#rotation_degrees.x -= 90.0
		rotate_object_local(Vector3(1, 0, 0), -PI/2)
		gravity_player.last_rotation = [Vector3(1, 0, 0), -PI/2]
		#rotate_object_local(gravity_player.global_position.normalized(), -PI/2)
		transform.orthonormalized()
	if event.is_action_pressed("rot_y_plus"):
		gravity_player.lock_to_level_rotator()
		#rotation_degrees.y += 90.0
		rotate_object_local(Vector3(0, 1, 0), PI/2)
		gravity_player.last_rotation = [Vector3(0, 1, 0), PI/2]
		transform.orthonormalized()
	if event.is_action_pressed("rot_y_minus"):
		gravity_player.lock_to_level_rotator()
		#rotation_degrees.y -= 90.0
		rotate_object_local(Vector3(0, 1, 0), -PI/2)
		gravity_player.last_rotation = [Vector3(0, 1, 0), -PI/2]
		transform.orthonormalized()
	if event.is_action_pressed("rot_z_plus"):
		gravity_player.lock_to_level_rotator()
		#rotation_degrees.z += 90.0
		rotate_object_local(Vector3(0, 0, 1), PI/2)
		gravity_player.last_rotation = [Vector3(0, 0, 1), PI/2]
		transform.orthonormalized()
	if event.is_action_pressed("rot_z_minus"):
		gravity_player.lock_to_level_rotator()
		#rotation_degrees.z -= 90.0
		rotate_object_local(Vector3(0, 0, 1), -PI/2)
		gravity_player.last_rotation = [Vector3(0, 0, 1), -PI/2]
		transform.orthonormalized()
		
