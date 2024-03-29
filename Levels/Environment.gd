extends Node3D

func rot_x_plus() -> void:
	#rotation_degrees.x += 90.0
	rotate_object_local(Vector3(1, 0, 0), PI/2)
	transform.orthonormalized()

func rot_x_minus() -> void:
	#rotation_degrees.x += 90.0
	rotate_object_local(Vector3(1, 0, 0), -PI/2)
	transform.orthonormalized()
	
func rot_y_plus() -> void:
	#rotation_degrees.y += 90.0
	rotate_object_local(Vector3(0, 1, 0), PI/2)
	transform.orthonormalized()

func rot_y_minus() -> void:
	#rotation_degrees.y -= 90.0
	rotate_object_local(Vector3(0, 1, 0), -PI/2)
	transform.orthonormalized()
	
func rot_z_plus() -> void:
	#rotation_degrees.z += 90.0
	rotate_object_local(Vector3(0, 0, 1), PI/2)
	transform.orthonormalized()

func rot_z_minus() -> void:
	#rotation_degrees.z -= 90.0
	rotate_object_local(Vector3(0, 0, 1), -PI/2)
	transform.orthonormalized()

func adjust_origin(new_origin: Vector3) -> void:
	position = position - new_origin
