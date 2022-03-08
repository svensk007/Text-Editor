extends Control


func _ready():
	pass

func _on_Exit_pressed():
	get_tree().quit()


func _on_OpenFile_pressed():
	$OpenFile/OpenFileDialog.popup_centered()


func _on_SaveFile_pressed():
	$SaveFile/SaveFileDialog.popup_centered()


func _on_OpenFileDialog_file_selected(path):
	print(path)
	var f = File.new()
	f.open(path, 1)
	$TextEdit.text = f.get_as_text()


func _on_SaveFileDialog_file_selected(path):
	var f = File.new()
	f.open(path, 2)
	f.store_string($TextEdit.text)
