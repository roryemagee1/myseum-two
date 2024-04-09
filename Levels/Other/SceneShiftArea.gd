extends Area3D

@export var file_path: String = "res://Levels/other_world.tscn"

func _on_body_entered(body: CharacterBody3D) -> void:
	get_tree().change_scene_to_file.bind(file_path).call_deferred()
