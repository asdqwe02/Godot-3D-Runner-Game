extends KinematicBody

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export (float) var speed = 0
export (float) var sideWaySpeed = 0
var _originalPos = Vector3.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	self._originalPos = transform.origin
	print(self._originalPos)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	move_and_slide(Vector3.FORWARD*speed*delta)
	if Input.is_key_pressed(KEY_SPACE):
		_resetPosition()
	if Input.is_key_pressed(KEY_A):
		translate(Vector3.LEFT*self.sideWaySpeed*delta)
		pass
	if Input.is_key_pressed(KEY_D):
		translate(Vector3.RIGHT*self.sideWaySpeed*delta)
		pass
	pass
	
func _physics_process(delta):
	translate(Vector3.FORWARD*self.speed*delta)	
		
func _resetPosition():
	transform.origin = self._originalPos

