extends Node3D

#@onready var camera_raycast: RayCast3D = %CameraRaycast
@onready var camera_raycast: RayCast3D = $"../../Player/CameraPivot/SmoothCamera/CameraRaycast"

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("left_mouse"):
		if camera_raycast.is_colliding():
			if camera_raycast.get_collider().is_in_group("rot_x_minus"):
				rot_x_counter()
			if camera_raycast.get_collider().is_in_group("rot_x_plus"):
				rot_x_clockwise()
			if camera_raycast.get_collider().is_in_group("rot_y_minus"):
				rot_y_counter()
			if camera_raycast.get_collider().is_in_group("rot_y_plus"):
				rot_y_clockwise()
			if camera_raycast.get_collider().is_in_group("rot_z_minus"):
				rot_z_counter()
			if camera_raycast.get_collider().is_in_group("rot_z_plus"):
				rot_z_clockwise()
	#if event.is_action_pressed("x_plus_counter"):
		#rot_x_counter()
	#if event.is_action_pressed("x_plus_clockwise"):
		#rot_x_clockwise()
	#if event.is_action_pressed("y_plus_counter"):
		#rot_y_counter()
	#if event.is_action_pressed("y_plus_clockwise"):
		#rot_y_clockwise()
	#if event.is_action_pressed("z_plus_counter"):
		#rot_z_counter()
	#if event.is_action_pressed("z_plus_clockwise"):
		#rot_z_clockwise()

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
