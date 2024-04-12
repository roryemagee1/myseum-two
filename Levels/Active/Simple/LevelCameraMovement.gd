extends Node3D

@export var speed: float = 1.0

func _physics_process(delta: float) -> void:
	var weight = clamp(delta * speed, 0.0, 1.0)
	
	global_transform = global_transform.interpolate_with(
		get_parent().get_parent().get_parent().get_parent().global_transform, 
		weight
	)
	global_position = get_parent().get_parent().get_parent().get_parent().global_position