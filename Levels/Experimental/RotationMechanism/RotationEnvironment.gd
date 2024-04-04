extends Node3D

#@onready var cubit: Node3D = $Cubit
@onready var cube_area: Area3D = $Cubit/Cube/CubeArea
@onready var cube_area_2: Area3D = $Cubit2/Cube/CubeArea
@onready var cube_area_3: Area3D = $Cubit3/Cube/CubeArea
@onready var cube_area_4: Area3D = $Cubit4/Cube/CubeArea
@onready var cube_area_5: Area3D = $Cubit4/Cubit5/Cube/CubeArea

func _input(event: InputEvent) -> void:
	update_cube(event, cube_area)
	update_cube(event, cube_area_2)
	update_cube(event, cube_area_3)
	update_cube(event, cube_area_4)
	update_cube(event, cube_area_5)
	#if event.is_action_pressed("right_plus"):
		#if cube_area.right_zone:
			#cubit.rot_x_plus()
	#if event.is_action_pressed("right_minus"):
		#if cube_area.right_zone:
			#cubit.rot_x_minus()
	#if event.is_action_pressed("left_plus"):
		#if !cube_area.right_zone:
			#cubit.rot_x_plus()
	#if event.is_action_pressed("left_minus"):
		#if !cube_area.right_zone:
			#cubit.rot_x_minus()
			#
	#if event.is_action_pressed("top_plus"):
		#if cube_area.top_zone:
			#cubit.rot_y_plus()
	#if event.is_action_pressed("top_minus"):
		#if cube_area.top_zone:
			#cubit.rot_y_minus()
	#if event.is_action_pressed("bottom_plus"):
		#if !cube_area.top_zone:
			#cubit.rot_y_plus()
	#if event.is_action_pressed("bottom_minus"):
		#if !cube_area.top_zone:
			#cubit.rot_y_minus()
	#
	#if event.is_action_pressed("front_plus"):
		#if cube_area.front_zone:
			#cubit.rot_z_plus()
	#if event.is_action_pressed("front_minus"):
		#if cube_area.front_zone:
			#cubit.rot_z_minus()
	#if event.is_action_pressed("back_plus"):
		#if !cube_area.front_zone:
			#cubit.rot_z_plus()
	#if event.is_action_pressed("back_minus"):
		#if !cube_area.front_zone:
			#cubit.rot_z_minus()

func update_cube(event: InputEvent, area: Area3D) -> void:
	if event.is_action_pressed("x_plus_counter"):
		if area.right_zone:
			area.get_parent().get_parent().rot_x_plus()
	if event.is_action_pressed("x_plus_clockwise"):
		if area.right_zone:
			area.get_parent().get_parent().rot_x_minus()
	if event.is_action_pressed("x_minus_counter"):
		if !area.right_zone:
			area.get_parent().get_parent().rot_x_plus()
	if event.is_action_pressed("x_minus_clockwise"):
		if !area.right_zone:
			area.get_parent().get_parent().rot_x_minus()
			
	if event.is_action_pressed("y_plus_counter"):
		if area.top_zone:
			area.get_parent().get_parent().rot_y_plus()
	if event.is_action_pressed("y_plus_clockwise"):
		if area.top_zone:
			area.get_parent().get_parent().rot_y_minus()
	if event.is_action_pressed("y_minus_counter"):
		if !area.top_zone:
			area.get_parent().get_parent().rot_y_plus()
	if event.is_action_pressed("y_minus_clockwise"):
		if !area.top_zone:
			area.get_parent().get_parent().rot_y_minus()
	
	if event.is_action_pressed("z_plus_counter"):
		if area.front_zone:
			area.get_parent().get_parent().rot_z_plus()
	if event.is_action_pressed("z_plus_clockwise"):
		if area.front_zone:
			area.get_parent().get_parent().rot_z_minus()
	if event.is_action_pressed("z_minus_counter"):
		if !area.front_zone:
			area.get_parent().get_parent().rot_z_plus()
	if event.is_action_pressed("z_minus_clockwise"):
		if !area.front_zone:
			area.get_parent().get_parent().rot_z_minus()

