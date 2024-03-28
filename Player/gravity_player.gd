extends CharacterBody3D

const SPEED = 5.0

@export var jump_height: float = 2.0
@export var fall_multiplier: float = 2.0

#Temp?
@export var gravity_direction: String = "y"
#Temp?

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity: float = ProjectSettings.get_setting("physics/3d/default_gravity")
var mouse_motion := Vector2.ZERO

@onready var camera_pivot: Node3D = $CameraPivot

func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _physics_process(delta: float) -> void:
	handle_camera_rotation()
	handle_gravity(delta, gravity_direction)

func handle_gravity(delta: float, gravity_direction: String) -> void:
	# Add the gravity.
	var vector := ["x", "y", "z", 1]
	if gravity_direction == "-y":
		vector = ["x", "y", "z", -1]
	if gravity_direction == "x":
		vector = ["z", "x", "y", 1]
	if gravity_direction == "-x":
		vector = ["z", "x", "y", -1]
	if gravity_direction == "z":
		vector = ["y", "z", "x", 1]
	if gravity_direction == "-z":
		vector = ["y", "z", "x", -1]
	
	if not is_on_floor():
		if velocity[vector[1]] >= 0:
			velocity[vector[1]] -= gravity * vector[3] * delta
		else:
			velocity[vector[1]] -= gravity * vector[3] * delta * fall_multiplier

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity[vector[1]] = sqrt(jump_height * 2.0 * gravity * vector[3])

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir := Input.get_vector("move_left", "move_right", "move_forward", "move_backward")
	var direction := (transform.basis * Vector3(input_dir[vector[0]], 0, input_dir[vector[1]])).normalized()
	if direction:
		velocity[vector[0]] = direction[vector[0]] * SPEED
		velocity[vector[2]] = direction[vector[2]] * SPEED
	else:
		velocity[vector[0]] = move_toward(velocity[vector[0]], 0, SPEED)
		velocity[vector[2]] = move_toward(velocity[vector[2]], 0, SPEED)

	move_and_slide()
	
func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		if Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
			mouse_motion = -event.relative * 0.001
	if event.is_action_pressed("ui_cancel"):
		if Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
			Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
		else:
			Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	if event.is_action_pressed("one"):
		gravity_direction = "y"
	if event.is_action_pressed("two"):
		gravity_direction = "-y"
	if event.is_action_pressed("three"):
		gravity_direction = "x"
	if event.is_action_pressed("four"):
		gravity_direction = "-x"
	if event.is_action_pressed("five"):
		gravity_direction = "z"
	if event.is_action_pressed("six"):
		gravity_direction = "-z"
	
		
func handle_camera_rotation() -> void:
	rotate_y(mouse_motion.x)
	camera_pivot.rotate_x(mouse_motion.y)
	camera_pivot.rotation_degrees.x = clampf(
		camera_pivot.rotation_degrees.x, 
		-90.0, 
		90.0
	)
	mouse_motion = Vector2.ZERO

func return_to_origin() -> void:
	position = Vector3(0.0, 1.0, 0.0)
	
#Save
#func handle_gravity() -> void:
	#if not is_on_floor():
		#if velocity.y >= 0:
			#velocity.y -= gravity * delta
		#else:
			#velocity.y -= gravity * delta * fall_multiplier
#
	# Handle jump.
	#if Input.is_action_just_pressed("jump") and is_on_floor():
		#velocity.y = sqrt(jump_height * 2.0 * gravity)
#
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	#var input_dir := Input.get_vector("move_left", "move_right", "move_forward", "move_backward")
	#var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	#if direction:
		#velocity.x = direction.x * SPEED
		#velocity.z = direction.z * SPEED
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)
		#velocity.z = move_toward(velocity.z, 0, SPEED)
#
	#move_and_slide()
