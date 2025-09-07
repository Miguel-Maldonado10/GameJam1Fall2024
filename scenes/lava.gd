# This script should be attached to an Area2D node that represents your lava.
extends Area2D
@onready var player: CharacterBody2D = $"../Player"
# This function is automatically called when a body (e.g., your player)
# enters any of the Area2D's collision shapes.
func _on_body_entered(body):
	# We check if the entering body belongs to the "player" group.
	# It's crucial that you add your player node to this group in the Godot editor.
	#if body.is_in_group("player"):
		# If it's the player, we'll handle their "death" or "game over" state.
		# You should replace the following line with the actual code
		# that handles your game's logic for a player dying.
	handle_player_death(body)

# This is a placeholder function to handle what happens when the player "dies."
# You'll need to customize this function based on your game's needs.
func handle_player_death(playerd):
	# For example, you might want to:
	# 1. Hide the player node.
	player.die()
	
	# 2. Emit a signal to your main game manager to handle game over logic.
	#    For example, you could have a signal on the Area2D itself:
	#    signal player_killed
	#    and then emit it here:
	#    emit_signal("player_killed")
	
	# 3. Reload the current scene.
	# get_tree().reload_current_scene()
	
	# 4. Show a game over screen.
	# get_tree().change_scene_to_file("res://scenes/GameOver.tscn")
	
	# In this example, we'll just print a message to the console.
	print("Player has entered the lava! Instakill activated.")
