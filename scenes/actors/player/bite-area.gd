extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_select"):
		set_monitoring(true)
		visible = true
		yield(get_tree().create_timer(0.125), "timeout")
		set_monitoring(false)
		visible = false


func _on_BiteArea_body_entered(body):
	print(body)
