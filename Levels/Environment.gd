extends Node3D

@onready var gravity_player: CharacterBody3D = %GravityPlayer

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("rot_x_plus"):
		adjust_map()
		rotation_degrees.x += 90
	if event.is_action_pressed("rot_x_minus"):
		adjust_map()
		rotation_degrees.x -= 90
	if event.is_action_pressed("rot_y_plus"):
		adjust_map()
		rotation_degrees.y += 90
	if event.is_action_pressed("rot_y_minus"):
		adjust_map()
		rotation_degrees.y -= 90
		
	#if event.is_action_pressed("rot_z_plus"):
		#rotation_degrees.z += 90
	#if event.is_action_pressed("rot_z_minus"):
		#rotation_degrees.z -= 90
		
func adjust_map() -> void:
	print("map", position)
	print("player", gravity_player.position)
	print("change", position - gravity_player.position)
	position = position - Vector3(gravity_player.position.x, gravity_player.position.y - 0.5, gravity_player.position.z,) 
	print("new position", position)
	gravity_player.return_to_origin()

#func _input(event: InputEvent) -> void:
	#if Input.is_action_pressed("rot_x_plus") || Input.is_action_pressed("rot_x_minus") ||Input.is_action_pressed("rot_y_plus") || Input.is_action_pressed("rot_y_minus"):
		#print("map", position)
		#print("player", gravity_player.position)
		#print("change", position - gravity_player.position)
		#position = position - gravity_player.position
		#print("new position", position)
		#gravity_player.return_to_origin()
		
