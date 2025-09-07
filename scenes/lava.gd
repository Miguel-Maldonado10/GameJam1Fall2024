extends Area2D

func _on_body_entered(body):
	# We check if the entered body has a function named `die()`.
	# This is a good practice to ensure the script only interacts with
	# objects that are designed to be "killed" by the lava.
	if body.has_method("die"):
		# If the body has the `die()` method, we call it.
		# This allows the body itself to handle its death logic
		# (e.g., playing an animation, showing a game over screen, etc.).
		body.die()

# Called when the node enters the scene tree for the first time.
