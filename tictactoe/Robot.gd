extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var x_pos : float = 645.437988
var y_pos : float = 316.812988
var up_bob : Vector2 = Vector2(0, 5) 
var down_bob : Vector2 = Vector2(0, -5)
var wait : int = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(645.437988, 316.812988)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if wait < 0:
		wait = 100
	wait -= 1
	if get_parent().game_counter % 2 == 0 and wait == 0:
		position += down_bob
	elif get_parent().game_counter % 2 != 0 and wait == 0:
		position += up_bob
