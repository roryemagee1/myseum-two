extends Node3D

#@onready var cubit: Node3D = $Cubit
@onready var cube_area: Area3D = $Cubit/Cube/CubeArea
@onready var cube_area_2: Area3D = $Cubit2/Cube/CubeArea
@onready var cube_area_3: Area3D = $Cubit3/Cube/CubeArea
@onready var cube_area_4: Area3D = $Cubit4/Cube/CubeArea

func _input(event: InputEvent) -> void:
	update_cube(event, cube_area)
	update_cube(event, cube_area_2)
	update_cube(event, cube_area_3)
	update_cube(event, cube_area_4)
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
	if event.is_action_pressed("right_plus"):
		if area.right_zone:
			area.get_parent().get_parent().rot_x_plus()
	if event.is_action_pressed("right_minus"):
		if area.right_zone:
			area.get_parent().get_parent().rot_x_minus()
	if event.is_action_pressed("left_plus"):
		if !area.right_zone:
			area.get_parent().get_parent().rot_x_plus()
	if event.is_action_pressed("left_minus"):
		if !area.right_zone:
			area.get_parent().get_parent().rot_x_minus()
			
	if event.is_action_pressed("top_plus"):
		if area.top_zone:
			area.get_parent().get_parent().rot_y_plus()
	if event.is_action_pressed("top_minus"):
		if area.top_zone:
			area.get_parent().get_parent().rot_y_minus()
	if event.is_action_pressed("bottom_plus"):
		if !area.top_zone:
			area.get_parent().get_parent().rot_y_plus()
	if event.is_action_pressed("bottom_minus"):
		if !area.top_zone:
			area.get_parent().get_parent().rot_y_minus()
	
	if event.is_action_pressed("front_plus"):
		if area.front_zone:
			area.get_parent().get_parent().rot_z_plus()
	if event.is_action_pressed("front_minus"):
		if area.front_zone:
			area.get_parent().get_parent().rot_z_minus()
	if event.is_action_pressed("back_plus"):
		if !area.front_zone:
			area.get_parent().get_parent().rot_z_plus()
	if event.is_action_pressed("back_minus"):
		if !area.front_zone:
			area.get_parent().get_parent().rot_z_minus()

