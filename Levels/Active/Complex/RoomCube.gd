extends Node3D

func rot_x_counter() -> void:
	global_rotate(Vector3(1, 0, 0), PI/2)
	transform.orthonormalized()

func rot_x_clockwise() -> void:
	global_rotate(Vector3(1, 0, 0), -PI/2)
	transform.orthonormalized()
	
func rot_y_counter() -> void:
	global_rotate(Vector3(0, 1, 0), PI/2)
	transform.orthonormalized()

func rot_y_clockwise() -> void:
	global_rotate(Vector3(0, 1, 0), -PI/2)
	transform.orthonormalized()
	
func rot_z_counter() -> void:
	global_rotate(Vector3(0, 0, 1), PI/2)
	transform.orthonormalized()

func rot_z_clockwise() -> void:
	global_rotate(Vector3(0, 0, 1), -PI/2)
	transform.orthonormalized()
