extends WorldEnvironment

@export var space: Texture2D
@export var sky: Texture2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("one"):
		environment.sky.sky_material.panorama = sky
	if Input.is_action_just_pressed("two"):
		environment.sky.sky_material.panorama = space
