extends Node3D

func rot_x_plus() -> void:
	global_rotate(Vector3(1, 0, 0), PI/2)
	transform.orthonormalized()

func rot_x_minus() -> void:
	global_rotate(Vector3(1, 0, 0), -PI/2)
	transform.orthonormalized()
	
func rot_y_plus() -> void:
	global_rotate(Vector3(0, 1, 0), PI/2)
	transform.orthonormalized()

func rot_y_minus() -> void:
	global_rotate(Vector3(0, 1, 0), -PI/2)
	transform.orthonormalized()
	
func rot_z_plus() -> void:
	global_rotate(Vector3(0, 0, 1), PI/2)
	transform.orthonormalized()

func rot_z_minus() -> void:
	global_rotate(Vector3(0, 0, 1), -PI/2)
	transform.orthonormalized()
	

#func rot_minus_x_plus() -> void:
	#global_rotate(Vector3(-1, 0, 0), PI/2)
	#transform.orthonormalized()
#
#func rot_minus_x_minus() -> void:
	#global_rotate(Vector3(-1, 0, 0), -PI/2)
	#transform.orthonormalized()
	#
#func rot_minus_y_plus() -> void:
	#global_rotate(Vector3(0, -1, 0), PI/2)
	#transform.orthonormalized()
#
#func rot_minus_y_minus() -> void:
	#global_rotate(Vector3(0, -1, 0), -PI/2)
	#transform.orthonormalized()
	#
#func rot_minus_z_plus() -> void:
	#global_rotate(Vector3(0, 0, -1), PI/2)
	#transform.orthonormalized()
#
#func rot_minus_z_minus() -> void:
	#global_rotate(Vector3(0, 0, -1), -PI/2)
	#transform.orthonormalized()
