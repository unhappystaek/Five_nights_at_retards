extends Spatial


var doorOpen: bool = true

func _ready():
	pass 






func _on_button_door_left_input_event(camera, event, click_position, click_normal, shape_idx):
	var mouse_click = event as InputEventMouseButton
	if mouse_click and mouse_click.button_index == 1 and mouse_click.pressed:
		if doorOpen == true :
			doorOpen = false
			$Door_close_left.play("Door_close_left")
		else:
			doorOpen = true
			$Door_open_left.play("Door_open_left")
