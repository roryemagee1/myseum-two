extends Area3D

@export var x_plus: bool = true
@export var y_plus: bool = true
@export var z_plus: bool = true

func _on_area_entered(area: Area3D) -> void:
	if area.zone_name == "x_plus":
		x_plus = true
		print("in x plus zone")
	if area.zone_name == "x_minus":
		x_plus = false
		print("in x minus zone")
	if area.zone_name == "y_plus":
		y_plus = true
		print("in y plus zone")
	if area.zone_name == "y_minus":
		y_plus = false
		print("in y minus zone")
	if area.zone_name == "z_plus":
		z_plus = true
		print("in z plus zone")
	if area.zone_name == "z_minus":
		z_plus = false
		print("in z minus zone")
