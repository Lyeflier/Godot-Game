extends Control

signal read_sound

func _ready():
	$UIMain.slide_in()

func _on_UIMain_settings_pressed():
	emit_signal("read_sound")
	$UIMain.slide_out()
	$Settings.slide_in()

func _on_Settings_back_button():
	$UIMain.slide_in()
	$Settings.slide_out()

func _on_UIMain_play_pressed():
	get_tree().change_scene("res://Scenes/LevelSelectScene.tscn")

func _on_Settings_sound_change():
	config_Manager.sound_on = !config_Manager.sound_on
