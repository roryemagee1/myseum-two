extends CSGSphere3D

@onready var gravity_player: CharacterBody3D = %GravityPlayer

func _process(delta: float) -> void:
	if !gravity_player.player_lock:
		#print(position, gravity_player.global_position)
		position = gravity_player.global_position
	
