extends Node

@onready var project_meltdown: Sprite2D = $ProjectMeltdown
@onready var animation_player: AnimationPlayer = $ProjectMeltdown/AnimationPlayer

const MAIN = preload("res://scenes/main.tscn")
const CONTROLLER = preload("res://scenes/controller.tscn")
const CREDITS = preload("res://scenes/credits.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is thepass elapsed time since the previous frame.
func _process(delta: float) -> void:
	animation_player.play("fade_out")


func _on_button_pressed() -> void:
	get_tree().change_scene_to_packed(MAIN)# Replace with function body.


func _on_controls_pressed() -> void:
	get_tree().change_scene_to_packed(CONTROLLER)


func _on_credits_pressed() -> void:
	get_tree().change_scene_to_packed(CREDITS)
