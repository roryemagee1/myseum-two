extends WorldEnvironment

@export var space: Texture2D
@export var sky: Texture2D
@export var cube: Texture2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("left_bracket"):
		environment.sky.sky_material.panorama = sky
	if Input.is_action_just_pressed("right_bracket"):
		environment.sky.sky_material.panorama = space

func switch_skybox(skybox: String) -> void:
	if skybox == "sky":
		environment.sky.sky_material.panorama = sky
	if skybox == "space":
		environment.sky.sky_material.panorama = space
	if skybox == "cube":
		environment.sky.sky_material.panorama = cube
		
