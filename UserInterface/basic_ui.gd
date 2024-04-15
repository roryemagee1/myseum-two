extends Control

@export var default_background: ViewportTexture
@onready var menu_background: TextureRect = $MenuBackground

@onready var inspiration_viewport: SubViewport = %InspirationViewport
@onready var inspiration_camera: Camera3D = %InspirationCamera

@onready var myseum_viewport: SubViewport = %MyseumViewport
@onready var myseum_camera: Camera3D = %MyseumCamera

@onready var gallery_viewport: SubViewport = %GalleryViewport
@onready var gallery_camera: Camera3D = %GalleryCamera

@onready var author_viewport: SubViewport = %AuthorViewport
@onready var author_camera: Camera3D = %AuthorCamera

@onready var about_viewport: SubViewport = %AboutViewport
@onready var about_camera: Camera3D = %AboutCamera

@onready var player: CharacterBody3D = %Player

var current_camera_position: Vector3 = Vector3(0, 1, 0)

func _ready() -> void:
	menu_background.set_background(myseum_viewport.get_texture())
	current_camera_position = myseum_camera.position

func toggle_ui(ui_visible: bool) -> void:
	visible = ui_visible
	get_tree().paused = ui_visible
	if ui_visible:
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	else:
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _on_about_button_pressed() -> void:
	menu_background.set_background(about_viewport.get_texture())
	current_camera_position = about_camera.position

func _on_inspiration_button_pressed() -> void:
	menu_background.set_background(inspiration_viewport.get_texture())
	current_camera_position = inspiration_camera.position

func _on_author_button_pressed() -> void:
	menu_background.set_background(author_viewport.get_texture())
	current_camera_position = author_camera.position
	
func _on_gallery_button_pressed() -> void:
	menu_background.set_background(gallery_viewport.get_texture())
	current_camera_position = gallery_camera.position

func _on_myseum_button_pressed() -> void:
	menu_background.set_background(myseum_viewport.get_texture())
	current_camera_position = myseum_camera.position

func _on_enter_button_pressed() -> void:
	toggle_ui(false)
	player.position = current_camera_position
	


