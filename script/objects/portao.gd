extends KinematicBody2D

func _ready():
	$tempo.start()

func _on_tempo_timeout():
	$porta.disabled=true
	$porta/textura.visible=false
