extends CharacterBody2D


const SPEED = 300.0 #velocidad






func _physics_process(_delta): #movimiento del personaje
	if Input.is_action_pressed("right"):
		velocity.x = SPEED 
	elif Input.is_action_pressed("left"):
		velocity.x = -SPEED
	elif  Input.is_action_pressed("down"):
		velocity.y = SPEED 
	
	elif Input.is_action_pressed("up"):
		velocity.y = -SPEED 
		
	else:
		velocity = Vector2.ZERO
		
	move_and_slide()
