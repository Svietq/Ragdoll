extends Spatial

func _event_is_left_click(event):
	return event is InputEventMouseButton

func _input(event):
	if  _event_is_left_click(event) and event.pressed:
		check_collision()

func check_collision():
	var camera = get_node("Camera")
	var mouse_pos = get_viewport().get_mouse_position()
	var from = camera.project_ray_origin(mouse_pos)
	var to = from + camera.project_ray_normal(mouse_pos)*10000
	var direct_state = PhysicsServer.space_get_direct_state(get_world().get_space())
	var colliders = direct_state.intersect_ray(from, to)

	if("collider" in colliders.keys()):
		var collider = colliders["collider"]

		if not collider.get("is_clicked") == null:
			collider.is_clicked = true
