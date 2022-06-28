extends KinematicBody2D


# Declare member variables here.
var speed : int = 10000
var side : int = 1
var motion = Vector2()
var aleatorio : bool = true
var timer = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta) -> void:

	if side == 1:
		motion.x = speed*delta
		#$sprite.flip_h = false
	elif side == 2:
		motion.x = -speed * delta
		#$sprite.flip_h = true
	elif side == 3:
		motion.y = speed * delta
	elif side == 4:
		motion.y = -speed * delta
	elif aleatorio == false:
		timer += 1*delta
		if timer > 6:
			aleatorio = true
			timer = 0
					
	motion = move_and_slide(motion)


func _on_Timer_timeout():
	if aleatorio == true:
		$Timer.set_wait_time(rand_range(0.2,0.6))
		side = int(rand_range(1,5))
	pass # Replace with function body.
