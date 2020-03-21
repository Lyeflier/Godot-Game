extends "res://Scripts/BaseMenuPanel.gd"

signal sound_change
signal back_button

export (Texture) var sound_on
export (Texture) var sound_off

func _on_Button1_pressed():
	config_Manager.sound_on = !config_Manager.sound_on
	change_sound_texture()
	config_Manager.save_config()
	SoundManager.set_volume()
	SoundManager.play_fixed_sound(0)

func change_sound_texture():
	if config_Manager.sound_on == true:
		$"MarginContainer/Graphic and Buttons/Buttons/Button1".texture_normal = sound_on
	else:
		$"MarginContainer/Graphic and Buttons/Buttons/Button1".texture_normal = sound_off
		
		
func _on_Button2_pressed():
	SoundManager.play_fixed_sound(0)
	emit_signal("back_button")

func _on_GameMenu_read_sound():
	change_sound_texture()
