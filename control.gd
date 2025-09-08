# The "Timer" is a built-in node, we can just call it "Timer" in the scene tree.
# We also have a "Label" node called "TimerLabel" to show the time.
# The `_ready` function is called when the node and all its children have entered the scene tree.
# We will use this function to get our child nodes.
extends Control

# The time variable will store the time elapsed in seconds.
var time_left: float = 60.0

# Called when the node enters the scene tree for the first time.
func _ready():
	# We get a reference to our Label node by its name.
	# It's good practice to ensure the node exists before trying to access it.
	if has_node("TimerLabel"):
		# We need to type-cast the node to a Label to access its properties.
		# This gives us access to things like the `text` property.
		var timer_label: Label = get_node("TimerLabel")
		timer_label.text = format_time(time_left)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# We continuously add the 'delta' time to our time_elapsed variable.
	if time_left > 0:
		time_left -= delta
	else: 
		get_tree().reload_current_scene()
	
	# We update the text of our Label node every frame.
	if has_node("TimerLabel"):
		var timer_label: Label = get_node("TimerLabel")
		timer_label.text = format_time(time_left)

# This function takes the time in seconds and formats it into a string like "HH:MM:SS".
func format_time(seconds: float) -> String:
	# We first calculate the hours, minutes, and seconds.
	# We use the integer part of the number for the hours.
	#var hours = int(seconds / 3600)
	# We use the remainder operator (%) to get the minutes part of the time.
	var minutes = int(fmod(seconds, 3600) / 60)
	# We get the seconds part of the time.
	var secs = int(fmod(seconds, 60))
	
	# We format the numbers to have leading zeros if they are less than 10.
	# The `%02d` is a format specifier for a two-digit integer with leading zeros.
	return "%02d:%02d" % [minutes, secs]
