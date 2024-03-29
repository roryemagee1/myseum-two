extends CharacterBody3D

const SPEED = 5.0

@export var jump_height: float = 2.0
@export var fall_multiplier: float = 2.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity: float = ProjectSettings.get_setting("physics/3d/default_gravity")
var mouse_motion := Vector2.ZERO

@onready var camera_pivot: Node3D = $CameraPivot
@onready var level_rotator: Node3D = %LevelRotator
@onready var environment: Node3D = %Environment

#Temp?
@onready var smooth_camera: Camera3D = $CameraPivot/SmoothCamera
@onready var aim_cast: RayCast3D = $CameraPivot/SmoothCamera/AimCast

var last_aim: Vector3 = Vector3(0.0, 0.0, 0.0)
var stored_rotation: Array[float] = [0.0, 0.0, 0.0]
#Temp

var player_lock: bool = false
#var last_coords: Vector3

func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _physics_process(delta: float) -> void:
	handle_camera_rotation()
	if !player_lock:
		handle_gravity(delta)
	#print("player:", rotation, position)
	#print("level:", level_rotator.rotation, level_rotator.position)
	#print("environment:", environment.rotation, environment.position)

#func _process(delta: float) -> void:
	#print(aim_cast.get_collision_point())

func handle_gravity(delta: float) -> void:
	if not is_on_floor():
		if velocity.y >= 0:
			velocity.y -= gravity * delta
		else:
			velocity.y -= gravity * delta * fall_multiplier

	 #Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = sqrt(jump_height * 2.0 * gravity)

	 #Get the input direction and handle the movement/deceleration.
	 #As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir := Input.get_vector("move_left", "move_right", "move_forward", "move_backward")
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()
		
func handle_camera_rotation() -> void:
	rotate_y(mouse_motion.x)
	camera_pivot.rotate_x(mouse_motion.y)
	camera_pivot.rotation_degrees.x = clampf(
		camera_pivot.rotation_degrees.x, 
		-90.0, 
		90.0
	)
	mouse_motion = Vector2.ZERO

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		if Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
			mouse_motion = -event.relative * 0.001
	if event.is_action_pressed("ui_cancel"):
		if Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
			Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
		else:
			Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	if event.is_action_pressed("jump") && player_lock:
		unlock_to_gravity_box()
	#if event.is_action_pressed("one"):
		#unlock_to_gravity_box()
	#if event.is_action_pressed("two"):
		#lock_to_level_rotator()

func lock_to_level_rotator() -> void:
	if !player_lock:
		last_aim = aim_cast.get_collision_point()
		#print("pivot rotation", camera_pivot.rotation)
		#print("environment", environment.rotation)
		#print("position", position)
		print("last_aim", last_aim)
		print("pivot", camera_pivot.position, camera_pivot.rotation, camera_pivot.global_position, camera_pivot.global_rotation)
		player_lock = true
		var base_node = environment.get_parent()
		base_node.remove_child(self)
		print("pivot", camera_pivot.position, camera_pivot.rotation, camera_pivot.global_position, camera_pivot.global_rotation)
		level_rotator.add_child(self)
		print("last_aim", last_aim)
		print("pivot", camera_pivot.position, camera_pivot.rotation, camera_pivot.global_position, camera_pivot.global_rotation)
		
		#print("position", position)
		#print("pivot rotation", camera_pivot.rotation)
		#print("environment", environment.rotation)

func unlock_to_gravity_box() -> void:
	#print("pivot rotation", camera_pivot.rotation)
	#print("environment", environment.rotation)
	#print("position", position)
	print("last_aim", last_aim)
	print("pivot", camera_pivot.position, camera_pivot.rotation, camera_pivot.global_position, camera_pivot.global_rotation)
	#var glob_pos = camera_pivot.global_position
	#var glob_rot = camera_pivot.global_rotation
	var base_node = environment.get_parent()
	level_rotator.remove_child(self)
	print("pivot", camera_pivot.position, camera_pivot.rotation, camera_pivot.global_position, camera_pivot.global_rotation)
	base_node.add_child(self)
	player_lock = false
	
	#rotate_y(stored_rotation[1])
	camera_pivot.rotate_x(-stored_rotation[0])
	stored_rotation = [0.0, 0.0, 0.0]
	
	print("last_aim", last_aim)
	print("pivot", camera_pivot.position, camera_pivot.rotation, camera_pivot.global_position, camera_pivot.global_rotation)
	#position = glob_pos
	#rotation = glob_rot
	#print("pivot", camera_pivot.position, camera_pivot.rotation, camera_pivot.global_position, camera_pivot.global_rotation)
	#print(camera_pivot.rotation_degrees)
	#camera_pivot.rotation_degrees = Vector3(camera_pivot.rotation_degrees.x - stored_rotation[0], camera_pivot.rotation_degrees.y - stored_rotation[1], camera_pivot.rotation_degrees.z - stored_rotation[2])
	#camera_pivot.rotation_degrees = Vector3(camera_pivot.rotation_degrees.x - 90, camera_pivot.rotation_degrees.y, camera_pivot.rotation_degrees.z)
	#look_at(global_position - last_aim + Vector3(0, 90, 0), Vector3.UP, true)
	#print("position", position)
	#print("pivot rotation", camera_pivot.rotation)
	#print("environment", environment.rotation)
	#stored_rotation = [0.0, 0.0, 0.0]
	
	
