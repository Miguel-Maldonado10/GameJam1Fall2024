extends Area2D

const WIN = preload("res://scenes/win.tscn")

func _on_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_packed(WIN)
