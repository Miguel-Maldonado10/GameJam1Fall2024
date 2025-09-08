extends Node
var timer = 0.0
const MENU = preload("res://scripts/menu.gd")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	timer += delta
	
	if timer > 3:
		get_tree().change_scene_to_file("res://scenes/menu.tscn")
