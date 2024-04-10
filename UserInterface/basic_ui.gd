extends Control

@export var default_background: ViewportTexture
@onready var menu_background: TextureRect = $MenuBackground
@onready var myseum_one_viewport: SubViewport = %MyseumOneViewport
@onready var player: CharacterBody3D = %Player
@onready var myseum_one_camera: Camera3D = %MyseumOneCamera

func _ready() -> void:
	menu_background.set_background(myseum_one_viewport.get_texture())

func toggle_ui(ui_visible: bool) -> void:
	visible = ui_visible
	get_tree().paused = ui_visible
	if ui_visible:
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	else:
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _on_about_button_pressed() -> void:
	pass # Replace with function body.

func _on_inspiration_button_pressed() -> void:
	pass # Replace with function body.

func _on_author_button_pressed() -> void:
	pass # Replace with function body.
	
func _on_gallery_button_pressed() -> void:
	pass # Replace with function body.

func _on_enter_button_pressed() -> void:
	toggle_ui(false)
	player.position = myseum_one_camera.position
	
