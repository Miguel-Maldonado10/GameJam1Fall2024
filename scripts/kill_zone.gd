extends Area2D
const LOSE = preload("res://scenes/lose.tscn")
func _on_body_entered(body: Node2D) -> void:
	print("You died!")	# Replace with function body.

#func _on_timer_timeout() -> void:
	get_tree().change_scene_to_packed(LOSE)
