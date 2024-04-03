extends Node3D

#@onready var cubits: Node3D = $Cubits
#@onready var cubit: Node3D = $Cubits/Cubit
#@onready var cubit_2: Node3D = $Cubits/Cubit2
#@onready var cubit_3: Node3D = $Cubits/Cubit3
#@onready var cubit_4: Node3D = $Cubits/Cubit4

@onready var cubit: Node3D = $Cubit
@onready var cube_area: Area3D = $Cubit/Cube/CubeArea

#func update_cubes() -> void:
	#for cubit in cubits.get_children():
		#print(cubit)

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("right_plus"):
		if cube_area.right_zone:
			cubit.rot_x_plus()
	if event.is_action_pressed("right_minus"):
		if cube_area.right_zone:
			cubit.rot_x_minus()
	if event.is_action_pressed("left_plus"):
		if !cube_area.right_zone:
			cubit.rot_x_plus()
	if event.is_action_pressed("left_minus"):
		if !cube_area.right_zone:
			cubit.rot_x_minus()
			
	if event.is_action_pressed("top_plus"):
		if cube_area.top_zone:
			cubit.rot_y_plus()
	if event.is_action_pressed("top_minus"):
		if cube_area.top_zone:
			cubit.rot_y_minus()
	if event.is_action_pressed("bottom_plus"):
		if !cube_area.top_zone:
			cubit.rot_y_plus()
	if event.is_action_pressed("bottom_minus"):
		if !cube_area.top_zone:
			cubit.rot_y_minus()
	
	if event.is_action_pressed("front_plus"):
		if cube_area.front_zone:
			cubit.rot_z_plus()
	if event.is_action_pressed("front_minus"):
		if cube_area.front_zone:
			cubit.rot_z_minus()
	if event.is_action_pressed("back_plus"):
		if !cube_area.front_zone:
			cubit.rot_z_plus()
	if event.is_action_pressed("back_minus"):
		if !cube_area.front_zone:
			cubit.rot_z_minus()

