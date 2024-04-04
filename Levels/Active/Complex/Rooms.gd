extends Node3D

#@onready var cubit: Node3D = $Cubit
#@onready var cube_area: Area3D = $Cubit/Cube/CubeArea
#@onready var cube_area_2: Area3D = $Cubit2/Cube/CubeArea
#@onready var cube_area_3: Area3D = $Cubit3/Cube/CubeArea
#@onready var cube_area_4: Area3D = $Cubit4/Cube/CubeArea
@onready var room_area: Area3D = $RoomCube/Room/Scene/RoomArea
@onready var room_area_2: Area3D = $RoomCube2/Room/Scene/RoomArea2
@onready var room_area_3: Area3D = $RoomCube3/Room/Scene/RoomArea3
@onready var room_area_4: Area3D = $RoomCube4/Room/Scene/RoomArea4
@onready var room_area_5: Area3D = $RoomCube5/Room/Scene/RoomArea5
@onready var room_area_6: Area3D = $RoomCube6/Room/Scene/RoomArea6
@onready var room_area_7: Area3D = $RoomCube7/Room/Scene/RoomArea7
@onready var room_area_8: Area3D = $RoomCube8/Room/Scene/RoomArea8

func _input(event: InputEvent) -> void:
	update_room_cube(event, room_area)
	update_room_cube(event, room_area_2)
	update_room_cube(event, room_area_3)
	update_room_cube(event, room_area_4)
	update_room_cube(event, room_area_5)
	update_room_cube(event, room_area_6)
	update_room_cube(event, room_area_7)
	update_room_cube(event, room_area_8)
	#update_cube(event, cube_area)
	#update_cube(event, cube_area_2)
	#update_cube(event, cube_area_3)
	#update_cube(event, cube_area_4)

func update_room_cube(event: InputEvent, area: Area3D) -> void:
	if event.is_action_pressed("x_plus_counter"):
		if area.x_plus:
			area.get_parent().get_parent().get_parent().rot_x_counter()
	if event.is_action_pressed("x_plus_clockwise"):
		if area.x_plus:
			area.get_parent().get_parent().get_parent().rot_x_clockwise()
	if event.is_action_pressed("x_minus_counter"):
		if !area.x_plus:
			area.get_parent().get_parent().get_parent().rot_x_counter()
	if event.is_action_pressed("x_minus_clockwise"):
		if !area.x_plus:
			area.get_parent().get_parent().get_parent().rot_x_clockwise()
			
	#if event.is_action_pressed("y_plus_counter"):
		#if area.y_plus:
			#area.get_parent().get_parent().get_parent().rot_y_counter()
	#if event.is_action_pressed("y_plus_clockwise"):
		#if area.y_plus:
			#area.get_parent().get_parent().get_parent().rot_y_clockwise()
	#if event.is_action_pressed("y_minus_counter"):
		#if !area.y_plus:
			#area.get_parent().get_parent().get_parent().rot_y_counter()
	#if event.is_action_pressed("y_minus_clockwise"):
		#if !area.y_plus:
			#area.get_parent().get_parent().get_parent().rot_y_clockwise()
	
	if event.is_action_pressed("z_plus_counter"):
		if area.z_plus:
			area.get_parent().get_parent().get_parent().rot_z_counter()
	if event.is_action_pressed("z_plus_clockwise"):
		if area.z_plus:
			area.get_parent().get_parent().get_parent().rot_z_clockwise()
	if event.is_action_pressed("z_minus_counter"):
		if !area.z_plus:
			area.get_parent().get_parent().get_parent().rot_z_counter()
	if event.is_action_pressed("z_minus_clockwise"):
		if !area.z_plus:
			area.get_parent().get_parent().get_parent().rot_z_clockwise()
