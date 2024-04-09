extends Node3D

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("x_minus_counter"):
		rot_x_counter()
	if event.is_action_pressed("x_minus_clockwise"):
		rot_x_clockwise()
	if event.is_action_pressed("y_minus_counter"):
		rot_y_counter()
	if event.is_action_pressed("y_minus_clockwise"):
		rot_y_clockwise()
	if event.is_action_pressed("z_minus_counter"):
		rot_z_counter()
	if event.is_action_pressed("z_minus_clockwise"):
		rot_z_clockwise()

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
