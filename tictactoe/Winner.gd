extends Label

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	self.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_parent().winner == 1:
		self.show()
		self.text = get_parent().player_name + ' wins!'
	elif get_parent().winner == 2:
		self.show()
		self.text = 'CPU wins!'
