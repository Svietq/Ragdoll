extends Camera

func _input(event):
	if event is InputEventKey and event.scancode == KEY_LEFT:
		rotate(Vector3(0, 1, 0), deg2rad(1))
	elif event is InputEventKey and event.scancode == KEY_RIGHT:
		rotate(Vector3(0, 1, 0), deg2rad(-1))
	elif event is InputEventKey and event.scancode == KEY_UP:
		rotate(Vector3(0, 0, 1), deg2rad(1))
	elif event is InputEventKey and event.scancode == KEY_DOWN:
		rotate(Vector3(0, 0, 1), deg2rad(-1))

	elif event is InputEventKey and event.scancode == KEY_D:
		translate(Vector3(1, 0, 0))
	elif event is InputEventKey and event.scancode == KEY_A:
		translate(Vector3(-1, 0, 0))
	elif event is InputEventKey and event.scancode == KEY_W:
		translate(Vector3(0, 0, -1))
	elif event is InputEventKey and event.scancode == KEY_S:
		translate(Vector3(0, 0, 1))		
