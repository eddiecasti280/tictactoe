extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var x_pos : float = 105.216003
var y_pos : float = 330.977997
var initial_rotation : float = 0
var up_bob : Vector2 = Vector2(0, 5) 
var down_bob : Vector2 = Vector2(0, -5)
var wait : int = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(105.216003, 330.977997)
	rotation = initial_rotation

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if wait < 0:
		wait = 100
	wait -= 1
	if get_parent().game_counter % 2 == 0 and wait == 0:
		position += down_bob
		rotation += PI / 6
	elif get_parent().game_counter % 2 != 0 and wait == 0:
		position += up_bob
		rotation -= PI / 6
