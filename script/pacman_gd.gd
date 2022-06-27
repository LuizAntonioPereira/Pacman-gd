extends KinematicBody2D


# Declare member variables here.
var velocity = 200
var move = Vector2.ZERO
var dead = false


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	#Global.lis_body.push_front(global_position)
	get_input()
	move_snake(delta)	

func get_input():
	
	if(Input.is_action_pressed("ui_up")):
		move = Vector2(0,-1)
#		$Sprite.flip_v = true
		rotation_degrees = 0
	elif(Input.is_action_pressed("ui_down")):
		move = Vector2(0,1)
#		$Sprite.flip_v = false
		rotation_degrees = 0
	elif(Input.is_action_pressed("ui_left")):
		move = Vector2(-1,0)
#		$Sprite.flip_v = false
		rotation_degrees = 90
	if(Input.is_action_pressed("ui_right")):
		move = Vector2(1,0)
#		$Sprite.flip_v = false
		rotation_degrees = -90
	
	
func move_snake(t):
	
	position += move * t * velocity# * Global.power
