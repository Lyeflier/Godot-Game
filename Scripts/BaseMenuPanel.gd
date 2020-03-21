extends CanvasLayer

func slide_in():
	$AnimationPlayer.play("Slide_In")

func slide_out():
	$AnimationPlayer.play_backwards("Slide_In")
