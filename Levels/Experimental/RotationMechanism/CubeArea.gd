extends Area3D

@onready var cubit: Node3D = $RotationEnvironment/Cubit

@export var front_zone: bool = true
@export var top_zone: bool = true
@export var right_zone: bool = true

func _on_area_entered(area: Area3D) -> void:
	if area.zone_name == "front_zone":
		front_zone = true
		print("in front zone")
	if area.zone_name == "back_zone":
		front_zone = false
		print("in back zone")
	if area.zone_name == "top_zone":
		top_zone = true
		print("in top zone")
	if area.zone_name == "bottom_zone":
		top_zone = false
		print("in bottom zone")
	if area.zone_name == "right_zone":
		right_zone = true
		print("in right zone")
	if area.zone_name == "left_zone":
		right_zone = false
		print("in left zone")
