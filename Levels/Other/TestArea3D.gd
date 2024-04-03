extends Area3D

@onready var world_environment: WorldEnvironment = $"../WorldEnvironment"

func _on_body_entered(body: CharacterBody3D) -> void:
	world_environment.switch_skybox("sky")
	
func _on_body_exited(body: CharacterBody3D) -> void:
	world_environment.switch_skybox("space")
