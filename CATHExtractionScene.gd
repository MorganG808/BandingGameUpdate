extends Node2D
var arrows = [0,2,0,2,0,2]
@onready var down: Area2D = get_node("clickedDownArrow")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	for i in arrows:
		await get_tree().create_timer(5).timeout
		print(i)
		if i == 2:
			down.visible = true
			await get_tree().create_timer(5).timeout
			if Input.is_action_pressed("ui_down"):
				print("correct")
			else:
				print("wrong")
			down.visible = false
