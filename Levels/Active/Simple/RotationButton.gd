extends CSGPolygon3D

@onready var camera_raycast: RayCast3D = $"../../../../Player/CameraPivot/SmoothCamera/CameraRaycast"
@export var group_name: String = ""
var material_copy: StandardMaterial3D = null
var default_color = Color.WHITE
var alt_color = Color.GREEN

func _ready() -> void:
	make_unique()
	
func make_unique() -> void:
	material_copy = get("material").duplicate()
	set("material", material_copy)

func _process(delta: float) -> void:
	if camera_raycast.is_colliding():
		if camera_raycast.get_collider().is_in_group(group_name):
			material.albedo_color = alt_color
	else:
		material.albedo_color = default_color
