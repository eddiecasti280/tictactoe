extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var player_own = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(player_own)
	if self.is_pressed():
		player_own = true
	
	if player_own:
		self.set_pressed(true)
