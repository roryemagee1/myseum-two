extends Area3D

@onready var world_environment: WorldEnvironment = $"../WorldEnvironment"

func _on_body_entered(body: CharacterBody3D) -> void:
	world_environment.switch_skybox("cube")
