extends Node3D

@export var speed: float = 1.0
@onready var gravity_player: CharacterBody3D = %GravityPlayer

func _physics_process(delta: float) -> void:
	#if Input.is_action_pressed("rot_x_plus") || Input.is_action_pressed("rot_x_minus") ||Input.is_action_pressed("rot_y_plus") || Input.is_action_pressed("rot_y_minus"):
		#adjust_map()
		
	var weight = clamp(delta * speed, 0.0, 1.0)
	
	global_transform = global_transform.interpolate_with(
		get_parent().global_transform, 
		weight
	)
	global_position = get_parent().global_position
	
#func adjust_map() -> void:
	#print("map", position)
	#print("player", gravity_player.position)
	#print("change", position - gravity_player.position)
	#position = position - Vector3(gravity_player.position.x, gravity_player.position.y - 0.5, gravity_player.position.z,) 
	#print("new position", position)
	#gravity_player.return_to_origin()

#func _input(event: InputEvent) -> void:
	#if Input.is_action_pressed("rot_x_plus") || Input.is_action_pressed("rot_x_minus") ||Input.is_action_pressed("rot_y_plus") || Input.is_action_pressed("rot_y_minus"):
		#print("map", position)
		#print("player", gravity_player.position)
		#print("change", position - gravity_player.position)
		#position = position - gravity_player.position
		#print("new position", position)
		#gravity_player.return_to_origin()
