extends Control

@onready var input_label: Label = $PanelContainer/VBoxContainer/HBoxContainer/MarginContainer/InputLabel
@onready var value_label: Label = $PanelContainer/VBoxContainer/HBoxContainer/MarginContainer2/valueLabel

@onready var button_1: Button = $PanelContainer/VBoxContainer/GridContainer/Button_1
@onready var button_2: Button = $PanelContainer/VBoxContainer/GridContainer/Button_2
@onready var button_3: Button = $PanelContainer/VBoxContainer/GridContainer/Button_3
@onready var button_4: Button = $PanelContainer/VBoxContainer/GridContainer/Button_4
@onready var button_5: Button = $PanelContainer/VBoxContainer/GridContainer/Button_5
@onready var button_6: Button = $PanelContainer/VBoxContainer/GridContainer/Button_6
@onready var button_7: Button = $PanelContainer/VBoxContainer/GridContainer/Button_7
@onready var button_8: Button = $PanelContainer/VBoxContainer/GridContainer/Button_8
@onready var button_9: Button = $PanelContainer/VBoxContainer/GridContainer/Button_9
@onready var button_0: Button = $PanelContainer/VBoxContainer/GridContainer/Button_0
@onready var button_decimal: Button = $PanelContainer/VBoxContainer/GridContainer/Button_Decimal
@onready var button_plus: Button = $PanelContainer/VBoxContainer/GridContainer/Button_Plus
@onready var button_minus: Button = $PanelContainer/VBoxContainer/GridContainer/Button_Minus
@onready var button_multi: Button = $PanelContainer/VBoxContainer/GridContainer/Button_Multi
@onready var button_div: Button = $PanelContainer/VBoxContainer/GridContainer/Button_Div
@onready var button_enter: Button = $PanelContainer/VBoxContainer/GridContainer/Button_Enter

var num1 : String = ''
var num2 : String = ''

var isAddTrue : bool = false
var isMinTrue : bool = false
var isDivTrue : bool = true
var isMultTrue : bool = false






func _on_button_1_pressed() -> void:
	var index = num1.length() + 1
	num1 = num1.insert(index, '1')
	input_label.text = num1
	
func _on_button_2_pressed() -> void:
	var index = num1.length() + 1
	num1 = num1.insert(index, '2')
	input_label.text = num1


func _on_button_3_pressed() -> void:
	var index = num1.length() + 1
	num1 = num1.insert(index, '3')
	input_label.text = num1


func _on_button_4_pressed() -> void:
	var index = num1.length() + 1
	num1 = num1.insert(index, '4')
	input_label.text = num1

func _on_button_5_pressed() -> void:
	var index = num1.length() + 1
	num1 = num1.insert(index, '5')
	input_label.text = num1

func _on_button_6_pressed() -> void:
	var index = num1.length() + 1
	num1 = num1.insert(index, '6')
	input_label.text = num1

func _on_button_7_pressed() -> void:
	var index = num1.length() + 1
	num1 = num1.insert(index, '7')
	input_label.text = num1

func _on_button_8_pressed() -> void:
	var index = num1.length() + 1	
	num1 = num1.insert(index, '8')
	input_label.text = num1

func _on_button_9_pressed() -> void:
	var index = num1.length() + 1
	num1 = num1.insert(index, '9')
	input_label.text = num1

func _on_button_0_pressed() -> void:
	var index = num1.length() + 1
	num1 = num1.insert(index, '0')
	input_label.text = num1

func _on_button_decimal_pressed() -> void:
	if '.' not in num1:
		var index = num1.length() + 1
		num1 = num1.insert(index, '.')
		input_label.text = num1		


func _on_button_plus_pressed() -> void:
	pass # Replace with function body.


func _on_button_minus_pressed() -> void:
	pass # Replace with function body.


func _on_button_multi_pressed() -> void:
	pass # Replace with function body.


func _on_button_div_pressed() -> void:
	pass # Replace with function body.


func _on_button_enter_pressed() -> void:
	pass # Replace with function body.
