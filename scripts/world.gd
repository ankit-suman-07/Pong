extends Node2D

func _ready() -> void:
	$VBoxContainer/PlayBtn.hide()

func _on_pause_btn_pressed() -> void:
	get_tree().paused = true
	$PauseBtn.hide()
	$VBoxContainer/PlayBtn.show()

func _on_play_btn_pressed() -> void:
	get_tree().paused = false
	$VBoxContainer/PlayBtn.hide()
	$PauseBtn.show()
