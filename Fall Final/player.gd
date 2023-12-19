extends Area2D

@onready var bgmusic = $"../Bgmusic"
@onready var enemyhit = $enemyhit


@export var speed = 300



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("right"):
		velocity.x += 1
	if Input.is_action_pressed("down"):
		velocity.y += 1
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("up"):
		velocity.y -= 1
	
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		position += velocity * delta
	




func _on_body_entered(body):
	hide()
	enemyhit.play()
	bgmusic.stop()
