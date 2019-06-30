extends RigidBody

var is_clicked = false
var is_released = false

func _integrate_forces(state):
	if is_clicked:
		state.set_linear_velocity(Vector3(0, 40, 0))
		is_clicked = false
	elif is_released:
		state.set_linear_velocity(Vector3(0, 0, 0))
		is_released = false

func _input(event):
	if Input.is_action_just_released("click"):
		is_released = true
