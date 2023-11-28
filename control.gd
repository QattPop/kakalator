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

var textNum : String = ''
var num1 : float = 0.0
var num2 : float = 0.0
var sumNum : float = 0.0

var isAdding : bool = false
var isMinTrue : bool = false
var isDivTrue : bool = false
var isMultTrue : bool = false

func _printBS() -> void:
	print('textNum: ', textNum)
	print('num1: ', num1)
	print('num2: ', num2)
	print('sumNum: ', sumNum)
	print('isAdding: ', isAdding)
	print('. ')
	print('.. ')
	print('...')

func _on_button_1_pressed() -> void:
	var index = textNum.length() + 1
	textNum = textNum.insert(index, '1')
	input_label.text = textNum
	
func _on_button_2_pressed() -> void:
	var index = textNum.length() + 1
	textNum = textNum.insert(index, '2')
	input_label.text = textNum


func _on_button_3_pressed() -> void:
	var index = textNum.length() + 1
	textNum = textNum.insert(index, '3')
	input_label.text = textNum


func _on_button_4_pressed() -> void:
	var index = textNum.length() + 1
	textNum = textNum.insert(index, '4')
	input_label.text = textNum

func _on_button_5_pressed() -> void:
	var index = textNum.length() + 1
	textNum = textNum.insert(index, '5')
	input_label.text = textNum

func _on_button_6_pressed() -> void:
	var index = textNum.length() + 1
	textNum = textNum.insert(index, '6')
	input_label.text = textNum

func _on_button_7_pressed() -> void:
	var index = textNum.length() + 1
	textNum = textNum.insert(index, '7')
	input_label.text = textNum

func _on_button_8_pressed() -> void:
	var index = textNum.length() + 1	
	textNum = textNum.insert(index, '8')
	input_label.text = textNum

func _on_button_9_pressed() -> void:
	var index = textNum.length() + 1
	textNum = textNum.insert(index, '9')
	input_label.text = textNum

func _on_button_0_pressed() -> void:
	var index = textNum.length() + 1
	textNum = textNum.insert(index, '0')
	input_label.text = textNum

func _on_button_decimal_pressed() -> void:
	if '.' not in textNum:
		var index = textNum.length() + 1
		textNum = textNum.insert(index, '.')
		input_label.text = textNum

func _on_button_plus_pressed() -> void:
	if isAdding:
		num1 = num2
		print(num1)
		num2 = float(textNum)
		print(num2)
		sumNum = num1 + num2
		num1 = sumNum
		textNum = ''
		input_label.text='0'
		value_label.text = str(sumNum)
		print('step2')
	if !isAdding:
		num2 = float(textNum)
		textNum = ''
		input_label.text = '0'
		value_label.text = str(num2)
		isAdding = true
		print('step1')
	_printBS()
		
func _on_button_minus_pressed() -> void:
	if isMinTrue:
		num2 = float(textNum)
		sumNum = num1 - num2
		num1 = sumNum
		textNum = ''
		input_label.text = '0'
		value_label.text = str(sumNum)
	if !isMinTrue:
		num1 = float(textNum)
		textNum = ''
		input_label.text = '0'
		isMinTrue = true


func _on_button_multi_pressed() -> void:
	if isMultTrue:
		num2 = float(textNum)
		sumNum = num1 * num2
		num1 = sumNum
		textNum = ''
		input_label.text = '0'
		value_label.text = str(sumNum)
	if !isMultTrue:
		num1 = float(textNum)
		textNum = ''
		input_label.text = '0'
		isMultTrue = true


func _on_button_div_pressed() -> void:
	if isDivTrue:
		num2 = float(textNum)
		sumNum = num1 / num2
		num1 = sumNum
		textNum = ''
		input_label.text = '0'
		value_label.text = str(sumNum)
	if !isDivTrue:
		num1 = float(textNum)
		textNum = ''
		input_label.text = '0'
		isDivTrue = true

func _on_button_enter_pressed() -> void:
	if isAdding:
		num1 = num2
		num2 = float(textNum)
		sumNum = num1 + num2
		num1 = sumNum
		textNum = ''
		input_label.text = '0'
		value_label.text = str(sumNum)
		sumNum = 0
		num1 = 0
		num2 = 0
		isAdding = false
		
	if isMinTrue:
		num2 = float(textNum)
		sumNum = num1 - num2
		num1 = sumNum
		textNum = ''
		input_label.text = '0'
		value_label.text = str(sumNum)
		isMinTrue = false
		
	if isMultTrue:
		num2 = float(textNum)
		sumNum = num1 * num2
		num1 = sumNum
		textNum = ''
		input_label.text = '0'
		value_label.text = str(sumNum)
		isMultTrue = false
		
	if isDivTrue:
		num2 = float(textNum)
		sumNum = num1 / num2
		num1 = sumNum
		textNum = ''
		input_label.text = '0'
		value_label.text = str(sumNum)
		isDivTrue = false
