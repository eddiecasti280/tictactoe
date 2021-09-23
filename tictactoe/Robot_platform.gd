extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var x_pos : float = 650
var y_pos : float = 390

# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(650, 390)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_parent().game_counter % 3 == 0:
		position = Vector2(x_pos, y_pos + 1)
	
