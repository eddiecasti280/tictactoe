extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pointer_finger = ("res://pointer_finger.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_custom_mouse_cursor(pointer_finger)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
